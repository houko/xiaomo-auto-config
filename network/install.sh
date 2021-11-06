# 网络测试工具(可以拿到所有的服务器ip) 需要sudo权限 sudo mtr baidu.com
brew install mtr
mtr -v

# 测网速
brew tap teamookla/speedtest
brew update
brew install speedtest --force
speedtest -v
