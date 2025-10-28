# postmarketOS for Xiaomi Mi 5 (Gemini)

自动构建 postmarketOS 镜像的工作流。

## 设备信息
- **设备**: Xiaomi Mi 5 (gemini)
- **架构**: aarch64
- **默认UI**: phosh

## 使用方法

### GitHub Actions 构建
1. 在 GitHub 仓库页面点击 **Actions**
2. 选择 **Build postmarketOS** 工作流
3. 点击 **Run workflow** 手动触发

### 本地构建
```bash
./scripts/setup-environment.sh
./scripts/build-image.sh
