# pod man
echo 开始安装podman
brew install podman

echo 初始化podman
podman machine init

echo 启动podman
podman machine start

echo podman当前版本
podman -v
