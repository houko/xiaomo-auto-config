echo 🍆 开始安装网络测试工具 可以拿到所有的服务器ip 需要sudo权限 如:sudo mtr baidu.com
brew install mtr
mtr -v

echo 🍆 开始安装网络测速工具speedtest
brew tap teamookla/speedtest
brew update
brew install speedtest --force

echo 🍆 speedtest版本
speedtest -v

echo 🍆 开始测试当前网速
speedtest
