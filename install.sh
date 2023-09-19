#!/bin/bash

isSudo=""
if [[ $(whoami) != "root" ]]; then
    isSudo="sudo "
fi

# 判断使用的包管理器
if command -v apt &> /dev/null; then
    PACKAGE_MANAGER="apt"
elif command -v yum &> /dev/null; then
    PACKAGE_MANAGER="yum"
else
    echo "未找到 apt 或 yum 包管理器"
    exit 1
fi

$isSudo ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

# 安装Docker
install_docker() {
  echo_content skyBlue "---> install_docker"
  # Docker
  DOCKER_MIRROR='"https://registry.docker-cn.com","https://mirror.baidubce.com","https://dockerproxy.com","https://hub-mirror.c.163.com","https://ccr.ccs.tencentyun.com"'

  if [[ ! $(docker -v 2>/dev/null) ]]; then
    echo_content green "---> 安装Docker"

    can_google=0
    can_connect www.google.com
    [[ "$?" == "0" ]] && can_google=1

    # 关闭防火墙
    if [[ "$(firewall-cmd --state 2>/dev/null)" == "running" ]]; then
      $isSudo systemctl stop firewalld.service && $isSudo systemctl disable firewalld.service
    fi

    # 时区
    timedatectl set-timezone Asia/Shanghai

    if [[ ${can_google} == 0 ]]; then
      $isSudo sh <(curl -sL https://get.docker.com) --mirror Aliyun
      # 设置Docker国内源
      $isSudo mkdir -p /etc/docker &&
        $isSudo cat >/etc/docker/daemon.json <<EOF
{
  "registry-mirrors":[${DOCKER_MIRROR}],
  "log-driver":"json-file",
  "log-opts":{
      "max-size":"50m",
      "max-file":"3"
  }
}
EOF
    else
      $isSudo sh <(curl -sL https://get.docker.com)
      $isSudo mkdir -p /etc/docker &&
        $isSudo cat >/etc/docker/daemon.json <<EOF
{
  "log-driver":"json-file",
  "log-opts":{
      "max-size":"50m",
      "max-file":"3"
  }
}
EOF
    fi

    $isSudo systemctl enable docker &&
      $isSudo systemctl restart docker

    if [[ $(docker -v 2>/dev/null) ]]; then
      echo_content skyBlue "---> Docker安装完成"
    else
      $isSudo sh <(curl -sL https://get.docker.com)
      $isSudo systemctl enable docker &&
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

  # 检查并安装 docker-compose
  if ! command -v docker-compose &> /dev/null; then
      echo "docker-compose 未安装，正在安装..."
      #$isSudo curl -L "https://github.com/docker/compose/releases/download/latest/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
      $isSudo curl -L "https://github.com/docker/compose/releases/download/v2.20.3/docker-compose-$(uname -s)-$(uname -m)"  -o /usr/local/bin/docker-compose
      chmod +x /usr/local/bin/docker-compose
  fi
}

install_docker


# 检查并安装 Git
if ! command -v git &> /dev/null; then
    echo "Git 未安装，正在安装..."
    if [ "$PACKAGE_MANAGER" == "apt" ]; then
        $isSudo apt update
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

docker-compose up -d