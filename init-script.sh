#!/bin/sh

# 判断是否为root用户
if [ $(id -u) != "0" ]; then
    echo "Error: 暂不支持非root用户安装"
    exit 1
fi

# 判断是否为Debian系列
if [ ! -f /etc/debian_version ]; then
    echo "Error: 暂不支持非Debian系列系统"
    exit 1
fi

# 判断是否为64位系统
if [ $(getconf WORD_BIT) != '32' ] && [ $(getconf LONG_BIT) != '64' ]; then
    echo "Error: 暂不支持非64位系统"
    exit 1
fi

# 升级软件
apt-get update
apt-get upgrade -y

# 安装必要的软件
apt-get install -y wget curl unzip git nano tmux htop vnstat

# 安装 Docker
curl -fsSL https://get.docker.com | bash -s docker

# 安装 zsh
apt-get install -y zsh
chsh -s /bin/zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"