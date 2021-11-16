#!/bin/bash

BASE_DIR="$HOME/.xiaomo/source"
AWS_BASE_DIR="$HOME/.xiaomo/source/aws_linux2"
echo 设置环境变量:BASE_DIR= "${BASE_DIR}"

echo '################# 开始安装git #################'
sudo yum install git -y

mkdir -p "$BASE_DIR"
# shellcheck disable=SC2164
cd "$BASE_DIR"
git clone https://github.com/houko/xiaomo-auto-config.git "$BASE_DIR"
git pull

sh "$AWS_BASE_DIR"/init/init_aws_linux2.sh

sh "$AWS_BASE_DIR"/input/init_inputrc.sh

sh "$AWS_BASE_DIR"/env/install.sh

sh "$AWS_BASE_DIR"/docker/install.sh

sh "$AWS_BASE_DIR"/nodejs/install.sh

sh "$AWS_BASE_DIR"/k8s/install.sh

sh "$AWS_BASE_DIR"/fzf/install.sh

sh "$AWS_BASE_DIR"/zsh/install.sh
