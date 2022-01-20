echo 🍧 开始安装terraform多版本管理工具tfenv
brew install tfenv

echo 🍧 开始安装terraform1.1.2
tfenv install 1.1.2

echo 🍧 设置默认版本为1.0.10
tfenv use 1.1.2

echo 🍧 当前terraform版本
terraform -v

echo 🍧 开始安装yor
brew tap bridgecrewio/tap
brew install bridgecrewio/tap/yor

# localstack start -d
echo 🍧 开始安装terraform模拟器
brew install localstack

echo 🍧 开始安装terraform封装工具
brew install terragrunt

echo 🍧 开始安装漏洞检测工具trivy
brew install aquasecurity/trivy/trivy


echo 🍧 生成terraform配置软连接
ln -sf ""$MAC_BASE_DIR"/terraform/terrmaformrc" "$HOME/.terrmaformrc"
