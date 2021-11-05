# 网络测试工具 需要sudo权限 sudo mtr baidu.com
brew install mtr
mtr -v

# 测网速
brew tap teamookla/speedtest
brew update
brew install speedtest --force
speedtest -v
