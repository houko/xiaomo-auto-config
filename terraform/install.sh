echo 🍧 开始安装terraform多版本管理工具tfenv
brew install tfenv

echo 🍧 开始安装terraform1.0.10
tfenv install 1.0.10

echo 🍧 设置默认版本为1.0.10
tfenv use 1.0.10

echo 🍧 当前terraform版本
terraform -v

echo 🍧 生成terraform配置软连接
ln -sf "$BASE_DIR/terraform/terrmaformrc" "$HOME/.terrmaformrc"
