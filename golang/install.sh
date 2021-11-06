echo 🐬 开始安装golang
brew install go

echo 🐬 开始安装golang多版本控制工具gvm
bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)

echo 🐬 开始安装golang1.17
gvm install 1.17

echo 🐬 设置当前版本为golang1.17
gvm use 1.17

echo 🐬 当前golang版本
go version