#!/bin/bash
set -e

echo "设置构建环境..."

# 安装系统依赖
sudo apt-get update
sudo apt-get install -y \
    git python3 python3-pip \
    build-essential curl wget file \
    qemu-user-static binfmt-support

# 安装 pmbootstrap
pip3 install --user pmbootstrap

# 添加到 PATH
export PATH="$HOME/.local/bin:$PATH"

echo "环境设置完成"
