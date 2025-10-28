#!/bin/bash
set -e

echo "设置构建环境..."

# 安装系统依赖
sudo apt-get update
sudo apt-get install -y \
    git python3 python3-pip python3-venv \
    build-essential curl wget file \
    qemu-user-static binfmt-support

# 方法：直接使用 git clone 和 setup.py
echo "安装 pmbootstrap..."
cd /tmp
git clone --depth 1 https://git.postmarketos.org/postmarketOS/pmbootstrap.git
cd pmbootstrap
python3 setup.py install --user

# 设置 PATH
export PATH="$HOME/.local/bin:$PATH"
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc

echo "环境设置完成"
