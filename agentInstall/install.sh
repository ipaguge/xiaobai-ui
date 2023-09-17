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

can_connect() {
  ping -c2 -i0.3 -W1 "$1" &>/dev/null
  if [[ "$?" == "0" ]]; then
    return 0
  else
    return 1
  fi
}

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

      $isSudo iptables -A INPUT -p tcp --dport 10000:60000 -j ACCEPT
      $isSudo iptables -A INPUT -p udp --dport 10000:60000 -j ACCEPT

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
}

# 安装agent
install_agent() {
  echo_content skyBlue "---> install_agent"
  directory="$PWD/agent/config"
  directory_bin="$PWD/agent/bin"
  filename="settings.yml"

  url="__agentConfig__"

  if [ -d "$directory" ]; then
    echo "Directory exists."
  else
    echo "Directory does not exist. Creating..."
    $isSudo mkdir -p  "$directory"
  fi

  if [ -f "$directory/$filename" ]; then
    rm "$directory/$filename"
  fi

  # 下载文件并保存到指定目录和指定名称
  if ! $isSudo wget -O "$directory/$filename" "$url"; then
    echo_content red "--->下载配置失败 $url"
    exit 1
  fi


  if [[ -z $($isSudo docker ps -a -q -f "name=^xiaobai_agent$") ]]; then
    echo_content green "---> 安装agent"

    $isSudo docker pull neikuwaichuan/v2-agent:4.0 &&
      $isSudo docker run -d --name xiaobai_agent --restart always \
        --network=host \
        -v /"$directory":/app/config \
        -v /"$directory_bin":/app/bin \
        neikuwaichuan/v2-agent:4.0

    if [[ -n $($isSudo docker ps -q -f "name=^xiaobai_agent$" -f "status=running") ]]; then
      echo_content skyBlue "---> agent安装完成"
    else
      $isSudo  docker ps
      echo_content red "---> agent安装失败或运行异常,请尝试修复或卸载重装"
      exit 0
    fi
  else
    echo_content skyBlue "---> 你已经安装了docker 重启docker"
    $isSudo docker restart xiaobai_agent
    if [[ -n $($isSudo docker ps -q -f "name=^xiaobai_agent$" -f "status=running") ]]; then
      echo_content skyBlue "---> agent安装完成"
    else
      echo_content red "---> agent安装失败或运行异常,请尝试修复或卸载重装"
      exit 0
    fi
  fi
}


install() {
  echo_content skyBlue "---> install"

  cd "$HOME" || exit 0

  echo_content skyBlue "---> install ing"

  if [[ $(command -v yum) ]]; then
    package_manager='yum'
  elif [[ $(command -v dnf) ]]; then
    package_manager='dnf'
  elif [[ $(command -v apt) ]]; then
    package_manager='apt'
  elif [[ $(command -v apt-get) ]]; then
    package_manager='apt-get'
  fi

  if [[ "${package_manager}" != 'yum' && "${package_manager}" != 'dnf' ]]; then
    $isSudo ${package_manager} update -y
  fi
  $isSudo ${package_manager} install -y \
    curl \
    wget \
    tar \
    lsof \
    systemd
}

main() {
  isSudo=""
  if [[ $(whoami) != "root" ]]; then
     isSudo="sudo "
  fi


  install
  clear

  install_docker
  install_agent

}

main