#!/bin/bash

BASE_DIR="$HOME/.xiaomo/source"

echo 开始拉取auto dev脚本到本地
git clone https://github.com/houko/LinuxMacSetup.git "$BASE_DIR"
echo 切换到macos分支
git checkout macos
echo 拉取最新代码
git fetch
git pull

sh $BASE_DIR/brew/install.sh

sh $BASE_DIR/nodejs/install.sh

sh $BASE_DIR/aws/install.sh

sh $BASE_DIR/browser/install.sh

sh $BASE_DIR/common/install.sh #通用工具：git、gun工具、字体

sh $BASE_DIR/fzf/install.sh

sh $BASE_DIR/git/install.sh

sh $BASE_DIR/golang/install.sh

sh $BASE_DIR/hammerspoon/install.sh

sh $BASE_DIR/ide/install.sh

sh $BASE_DIR/istio/install.sh

sh $BASE_DIR/java/install.sh

sh $BASE_DIR/docker/install.sh

sh $BASE_DIR/k8s/install.sh

sh $BASE_DIR/mac/install.sh

sh $BASE_DIR/media/install.sh

sh $BASE_DIR/network/install.sh

#sh $BASE_DIR/podman/install.sh

sh $BASE_DIR/python/install.sh

sh $BASE_DIR/shell/install.sh

sh $BASE_DIR/snape/install.sh

sh $BASE_DIR/sns/install.sh

sh $BASE_DIR/ssh/install.sh

sh $BASE_DIR/terraform/install.sh

sh $BASE_DIR/tmux/install.sh

sh $BASE_DIR/tools/install.sh

sh $BASE_DIR/vm/install.sh

sh $BASE_DIR/vpn/install.sh

sh $BASE_DIR/wget/install.sh
