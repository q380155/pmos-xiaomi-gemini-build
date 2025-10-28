#!/bin/bash
set -e
echo "设置构建环境..."
sudo apt-get update
sudo apt-get install -y git python3 python3-pip build-essential curl wget file qemu-user-static binfmt-support
echo "安装 pmbootstrap..."
pip3 install --user git+https://git.postmarketos.org/postmarketOS/pmbootstrap.git
export PATH="$HOME/.local/bin:$PATH"
echo "环境设置完成"
