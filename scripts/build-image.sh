#!/bin/bash
set -e

export PATH="$HOME/.local/bin:$PATH"

echo "开始构建 postmarketOS 镜像..."

# 初始化配置
pmbootstrap init \
    --non-interactive \
    --work "$HOME/pmos_work" \
    --device xiaomi-gemini \
    --ui phosh \
    --arch aarch64 \
    --hostname postmarketos \
    --user user \
    --ssh

# 设置密码
echo "user:pmos123" | pmbootstrap chroot -- passwd

# 构建镜像
echo "构建镜像中..."
pmbootstrap install --no-fde

# 查找镜像文件
IMAGE_PATH=$(find ~/.local/var/pmbootstrap -name "*gemini*.img" -type f | head -1)

if [ -n "$IMAGE_PATH" ]; then
    echo "镜像构建完成: $IMAGE_PATH"
    xz -z -v -T0 "$IMAGE_PATH"
    echo "最终镜像: ${IMAGE_PATH}.xz"
else
    echo "镜像文件未找到"
    exit 1
fi
