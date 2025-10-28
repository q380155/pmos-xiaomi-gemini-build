#!/bin/bash
set -e

echo "设置构建环境..."

# 安装系统依赖
sudo apt-get update
sudo apt-get install -y \
    git python3 python3-pip python3-venv \
    build-essential curl wget file \
    qemu-user-static binfmt-support

# 官方推荐的 pmbootstrap 安装方法
echo "安装 pmbootstrap..."
git clone https://git.postmarketos.org/postmarketOS/pmbootstrap.git ~/pmbootstrap
cd ~/pmbootstrap
pip3 install --user .

# 设置 PATH
export PATH="$HOME/.local/bin:$PATH"
echo "环境设置完成"
