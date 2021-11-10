#!/bin/bash

BASE_DIR="$HOME/.xiaomo/source"
MAC_BASE_DIR="$HOME/.xiaomo/source/macos"

echo 开始拉取auto dev脚本到本地
git clone https://github.com/houko/xiaomo-auto-config.git "$BASE_DIR"
echo 拉取最新代码
# shellcheck disable=SC2164
cd "$BASE_DIR"
git fetch
git pull

sh "$MAC_BASE_DIR"/brew/install.sh

sh "$MAC_BASE_DIR"/nodejs/install.sh

sh "$MAC_BASE_DIR"/aws/install.sh

sh "$MAC_BASE_DIR"/browser/install.sh

sh "$MAC_BASE_DIR"/common/install.sh #通用工具：git、gun工具、字体

sh "$MAC_BASE_DIR"/fzf/install.sh

sh "$MAC_BASE_DIR"/wget/install.sh

sh "$MAC_BASE_DIR"/git/install.sh

sh "$MAC_BASE_DIR"/golang/install.sh

sh "$MAC_BASE_DIR"/hammerspoon/install.sh

sh "$MAC_BASE_DIR"/ide/install.sh

sh "$MAC_BASE_DIR"/istio/install.sh

sh "$MAC_BASE_DIR"/java/install.sh

sh "$MAC_BASE_DIR"/docker/install.sh

sh "$MAC_BASE_DIR"/k8s/install.sh

sh "$MAC_BASE_DIR"/mac/config.sh

sh "$MAC_BASE_DIR"/media/install.sh

sh "$MAC_BASE_DIR"/network/install.sh

#sh "$MAC_BASE_DIR"/podman/install.sh

sh "$MAC_BASE_DIR"/python/install.sh

sh "$MAC_BASE_DIR"/shell/install.sh

sh "$MAC_BASE_DIR"/snape/install.sh

sh "$MAC_BASE_DIR"/sns/install.sh

sh "$MAC_BASE_DIR"/ssh/install.sh

sh "$MAC_BASE_DIR"/supervisor/install.sh

sh "$MAC_BASE_DIR"/terraform/install.sh

sh "$MAC_BASE_DIR"/tmux/install.sh

sh "$MAC_BASE_DIR"/tools/install.sh

sh "$MAC_BASE_DIR"/vm/install.sh

sh "$MAC_BASE_DIR"/vpn/install.sh



echo 👀 感谢您的耐心等待,所有软件己全部安装完成,Enjoy It.
