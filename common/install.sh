#!/bin/bash

BASE_DIR="$HOME/.xiaomo/source"
echo 开始安装git
brew install git

xcode-select --install 2>/dev/null || true

echo 开始拉取auto dev脚本到本地
git clone https://github.com/houko/LinuxMacSetup.git "$BASE_DIR"
echo 切换到macos分支
git checkout macos
echo 拉取最新代码
git fetch
git pull

echo 开始安装gnu官方的一系列工具 coreutils findutils gawk gnu-sed
brew install coreutils
brew install findutils
brew install gawk
brew install gnu-sed

echo 开始安装google fira-code字体
brew install font-fira-code
