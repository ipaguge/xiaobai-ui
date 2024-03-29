#!/usr/bin/env bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

echo_content() {

  ECHO_TYPE="echo -e"
  case $1 in
  "red")
    ${ECHO_TYPE} "\033[31m$2\033[0m"
    ;;
  "green")
    ${ECHO_TYPE} "\033[32m$2\033[0m"
    ;;
  "yellow")
    ${ECHO_TYPE} "\033[33m$2\033[0m"
    ;;
  "blue")
    ${ECHO_TYPE} "\033[34m$2\033[0m"
    ;;
  "purple")
    ${ECHO_TYPE} "\033[35m$2\033[0m"
    ;;
  "skyBlue")
    ${ECHO_TYPE} "\033[36m$2\033[0m"
    ;;
  "white")
    ${ECHO_TYPE} "\033[37m$2\033[0m"
    ;;
  esac
}
isInChina() {
  # 获取公网 IP 地址
  ip=$(curl -s https://ipinfo.io/ip)

  if [ -z "$ip" ]; then
    echo_content red "无法获取公网 IP 地址，尝试其他方法判断。"
  else
    # 查询 IP 地址信息
    country=$(curl -s https://ipinfo.io/$ip/country)

    if [ -z "$country" ]; then
      echo_content red "无法获取 IP 地址所在国家，尝试其他方法判断。"
    else
      # 判断是否是中国 IP 地址
      if [ "$country" = "CN" ]; then
        echo_content skyBlue "在中国境内。"
        return 0 # 返回 0 表示成功，即在中国境内
      else
        echo_content skyBlue "不在中国境内。"
        return 1 # 返回非 0 表示失败，即不在中国境内
      fi
    fi
  fi

  # 如果 IP 地址获取或查询失败，尝试访问 Google 来判断
  if curl -s --connect-timeout 5 https://www.google.com >/dev/null; then
    echo_content skyBlue "能够访问 Google，不在中国境内。"
    return 1 # 返回非 0 表示失败，即不在中国境内
  else
    echo_content skyBlue "无法访问 Google，可能在中国境内。"
    return 0 # 返回 0 表示成功，即在中国境内
  fi
}
set_daemon() {
  # Docker
  DOCKER_MIRROR='"https://reg-mirror.qiniu.com","https://gcr-mirror.qiniu.com","https://quay-mirror.qiniu.com","https://docker.mirrors.ustc.edu.cn","https://gcr.mirrors.ustc.edu.cn","https://quay.mirrors.ustc.edu.cn"'

  NEW_CONFIG=""

  if [ $inChina -eq 0 ]; then
    echo_content skyBlue "设置国内daemon"
    NEW_CONFIG=$(
      cat <<EOF
{
  "registry-mirrors":[${DOCKER_MIRROR}],
  "log-driver":"json-file",
  "log-opts":{
    "max-size":"50m",
    "max-file":"3"
  }
}
EOF
    )
  else
    echo_content skyBlue "设置国外daemon"
    NEW_CONFIG=$(
      cat <<EOF
{
  "log-driver":"json-file",
  "log-opts":{
    "max-size":"50m",
    "max-file":"3"
  }
}
EOF
    )
  fi

  # 读取现有的配置
  EXISTING_CONFIG=""
  if [ -f "/etc/docker/daemon.json" ]; then
    EXISTING_CONFIG=$($isSudo cat /etc/docker/daemon.json)
  fi

  # 比较两个配置是否相同
  if [ "$EXISTING_CONFIG" != "$NEW_CONFIG" ]; then
    $isSudo mkdir -p /etc/docker
    echo "$NEW_CONFIG" | $isSudo tee /etc/docker/daemon.json >/dev/null
    if [[ $(docker -v 2>/dev/null) ]]; then
      echo_content skyBlue "重新配置了daemon 重启docker"
      systemctl restart docker
    fi
  else
    echo_content skyBlue "daemon 已经设置"
  fi
}
install_docker() {
  echo_content skyBlue "---> install_docker"

  if [[ ! $(docker -v 2>/dev/null) ]]; then
    set_daemon
    echo_content green "---> 安装Docker"
    # 关闭防火墙
    if [[ "$(firewall-cmd --state 2>/dev/null)" == "running" ]]; then
      $isSudo systemctl stop firewalld.service && $isSudo systemctl disable firewalld.service
    fi

    if [ $inChina -eq 0 ]; then
      #      $isSudo sh <(curl -sL https://get.docker.com) --mirror Aliyun
#            $isSudo sh <(curl -sL https://get.docker.com) --mirror AzureChinaCloud
            export DOWNLOAD_URL="https://mirrors.tuna.tsinghua.edu.cn/docker-ce"
            $isSudo sh <(curl -fsSL https://get.docker.com/ | sudo -E sh)
    else
      $isSudo sh <(curl -sL https://get.docker.com)
    fi

    $isSudo iptables -A INPUT -p tcp --dport 10000:60000 -j ACCEPT
    $isSudo iptables -A INPUT -p udp --dport 10000:60000 -j ACCEPT
    timedatectl set-timezone Asia/Shanghai
    $isSudo systemctl enable docker
    $isSudo systemctl restart docker

    if [[ $(docker -v 2>/dev/null) ]]; then
      echo_content skyBlue "---> Docker安装完成"
    else
      $isSudo sh <(curl -sL https://get.docker.com)
      $isSudo systemctl enable docker
      $isSudo systemctl restart docker
      if [[ $(docker -v 2>/dev/null) ]]; then
        echo_content skyBlue "---> Docker安装完成"
      else
        echo_content red "---> Docker安装失败"
        exit 0
      fi
    fi
  else
    # 检查Docker服务状态
    if systemctl is-active --quiet docker; then
      echo "Docker is running."
    else
      echo "Docker is not running. Enabling and starting Docker..."
      $isSudo systemctl enable docker && $isSudo systemctl restart docker
    fi
    echo_content skyBlue "---> 你已经安装了Docker"
  fi

  if ! command -v docker-compose >/dev/null; then
      echo "docker-compose 未安装，正在安装..."
      $isSudo curl -L "https://github.com/docker/compose/releases/download/v2.20.3/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
      chmod +x /usr/local/bin/docker-compose
  fi
  if ! command -v docker-compose >/dev/null; then
    echo "docker-compose 安装失败..."
    exit 0
  fi
}
install_server() {

  # 检查并安装 Git
  if ! command -v git &>/dev/null; then
    echo "Git 未安装，正在安装..."
    if [ "$PACKAGE_MANAGER" == "apt" ]; then
      $isSudo apt install -y git
    elif [ "$PACKAGE_MANAGER" == "yum" ]; then
      $isSudo yum install -y git
    fi
  fi

  # 如果ceshi/x-ui-new目录不存在，则执行git clone
  if [[ ! -d "xiaobai-ui" ]]; then
    git clone https://github.com/ipaguge/xiaobai-ui.git
  fi

  # 获取外网IP
  IP=$(curl -s ifconfig.me)

  # 检查是否成功获取外网IP
  if [[ -z $IP ]]; then
    echo "无法获取外网IP。"
    exit 1
  fi
  cd xiaobai-ui

  # 替换config目录下的settings.yml文件中的0.0.0.0为外网IP
  sed -i "s/0.0.0.0/$IP/g" config/settings.yml

  sudo docker-compose up -d

}
main() {
  isSudo=""
  if [[ $(whoami) != "root" ]]; then
    isSudo="sudo "
  fi

  # 判断使用的包管理器
  if command -v apt &>/dev/null; then
    PACKAGE_MANAGER="apt"
  elif command -v yum &>/dev/null; then
    PACKAGE_MANAGER="yum"
  else
    echo "未找到 apt 或 yum 包管理器"
    exit 1
  fi

  $isSudo ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
  install_docker
  install_server
}

isInChina
inChina=$?
$isSudo apt update
main
