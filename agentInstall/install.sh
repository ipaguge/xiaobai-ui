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
                return 0    # 返回 0 表示成功，即在中国境内
            else
                echo_content skyBlue "不在中国境内。"
                return 1    # 返回非 0 表示失败，即不在中国境内
            fi
        fi
    fi

    # 如果 IP 地址获取或查询失败，尝试访问 Google 来判断
    if curl -s --connect-timeout 5 https://www.google.com > /dev/null; then
        echo_content skyBlue "能够访问 Google，不在中国境内。"
        return 1    # 返回非 0 表示失败，即不在中国境内
    else
        echo_content skyBlue "无法访问 Google，可能在中国境内。"
        return 0    # 返回 0 表示成功，即在中国境内
    fi
}

set_daemon(){
 # Docker
  DOCKER_MIRROR='"https://reg-mirror.qiniu.com","https://gcr-mirror.qiniu.com","https://quay-mirror.qiniu.com","https://docker.mirrors.ustc.edu.cn","https://gcr.mirrors.ustc.edu.cn","https://quay.mirrors.ustc.edu.cn"'

  NEW_CONFIG=""

  if [ $inChina -eq 0 ]; then
      echo_content skyBlue "设置国内daemon"
      NEW_CONFIG=$(cat <<EOF
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
    NEW_CONFIG=$(cat <<EOF
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
        $isSudo sh <(curl -sL https://get.docker.com) --mirror Aliyun
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
}

install_agent() {
  echo_content skyBlue "---> install_agent"
  directory="$PWD/agent/config"
  directory_conf="$directory/settings.yml"
  directory_frpc="$directory/frp/frpc"
  directory_frps="$directory/frp/frps"
  directory_xray="$directory/xray"
  directory_tmp="$PWD/agent/tmp"

  url="__agentConfig__"

  if [ -d "$directory" ]; then
    echo "Directory exists."
  else
    echo "Directory does not exist. Creating..."
    $isSudo mkdir -p  "$directory"
  fi

  if [ -f "$directory_conf" ]; then
    rm "$directory_conf"
  fi

  # 下载文件并保存到指定目录和指定名称
  if ! $isSudo wget -O "$directory_conf" "$url"; then
    echo_content red "--->下载配置失败 $url"
    exit 1
  fi

  IMAGE="neikuwaichuan/v2-agent:71.0"
  if docker images --format '{{.Repository}}:{{.Tag}}' | grep -q "^$IMAGE$"; then
       echo "The image $IMAGE has been pulled."
  else
       set_daemon
       $isSudo docker pull $IMAGE
       $isSudo docker stop xiaobai_agent
       $isSudo docker rm   xiaobai_agent
  fi

  if [[ -z $($isSudo docker ps -a -q -f "name=^xiaobai_agent$") ]]; then

    echo_content green "---> 安装agent"
#    docker run -d --name xiaobai_agent -e TZ=Asia/Shanghai --restart always   --network=host   -v /root/agent/config/settings.yml:/app/config/settings.yml -v /root/agent/tmp:/app/tmp neikuwaichuan/v2-agent:36.0
    $isSudo docker run -d  --name xiaobai_agent -e TZ=Asia/Shanghai --restart always   --network=host   -v "$directory_conf":/app/config/settings.yml -v "$directory_frpc":/app/config/frp/frpc  -v "$directory_frps":/app/config/frp/frps  -v "$directory_xray":/app/config/xray  -v "$directory_tmp":/app/tmp $IMAGE

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

#!/bin/bash

# 函数：检查和设置内核参数
function check_and_set_kernel_param {
    local param_name="$1"
    local desired_value="$2"

    # 检查是否存在参数设置
    if grep -qE "^$param_name=" /etc/sysctl.conf; then
        # 提取当前值
        current_value=$(grep -E "^$param_name=" /etc/sysctl.conf | awk -F'=' '{print $2}')

        # 检查当前值是否与所需值匹配
        if [ "$current_value" = "$desired_value" ]; then
            echo_content skyBlue "$param_name 已设置为所需值，跳过。"
        else
            echo_content skyBlue "$param_name 已设置为不同的值，正在修改为 $desired_value。"
            sed -i "s/^$param_name=.*/$param_name=$desired_value/" /etc/sysctl.conf
            sysctl -p
            echo_content skyBlue "已修改 $param_name 为 $desired_value。"
        fi
    else
        # 如果参数未在文件中找到，则添加它
        echo "$param_name=$desired_value" >> /etc/sysctl.conf
        sysctl -p
        echo_content skyBlue "已添加 $param_name 并设置为 $desired_value。"
    fi



    ulimit -n 1000000
    echo "12553500" > /proc/sys/fs/file-max
    # 需要设置的配置项和值
    declare -A configs
    configs=(
        ["net.ipv4.tcp_tw_reuse"]=1
        ["net.ipv4.tcp_tw_recycle"]=0
        ["net.ipv4.ip_local_port_range"]="1024 65000"
        ["net.ipv4.tcp_mem"]="786432 2097152 3145728"
        ["net.ipv4.tcp_rmem"]="4096 4096 16777216"
        ["net.ipv4.tcp_wmem"]="4096 4096 16777216"
    )

    # 临时文件
    temp_file=$(mktemp)

    # 读取现有配置文件
    if [ -f /etc/sysctl.conf ]; then
        cat /etc/sysctl.conf > "$temp_file"
    fi

    # 更新或添加配置项
    for key in "${!configs[@]}"; do
        if grep -qE "^$key\s*=" "$temp_file"; then
            # 配置项存在，检查值是否相同
            value=$(grep -oP "$key\s*=\s*\K.*" "$temp_file")
            if [ "$value" != "${configs[$key]}" ]; then
                # 值不相同，更新值
                sed -i -E "s/^($key\s*=).*/\1${configs[$key]}/" "$temp_file"
                echo "更新 $key = ${configs[$key]}"
            else
                # 值相同，跳过
                echo "跳过 $key = ${configs[$key]}"
            fi
        else
            # 配置项不存在，添加配置项和值
            echo "$key = ${configs[$key]}" >> "$temp_file"
            echo "添加 $key = ${configs[$key]}"
        fi
    done

    # 覆盖原有配置文件
    mv "$temp_file" /etc/sysctl.conf

    # 重新加载 sysctl 配置
    sysctl -p

    # 删除临时文件（可选，因为已经被覆盖）
    rm -f "$temp_file"

}



main() {
  isSudo=""
  if [[ $(whoami) != "root" ]]; then
     isSudo="sudo "
  fi
  $isSudo ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
  check_and_set_kernel_param "kern.ipc.maxsockbuf" "3014656"
  install
  clear

  install_docker
  install_agent

}
isInChina
inChina=$?
main
