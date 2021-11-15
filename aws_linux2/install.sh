#!/bin/bash

BASE_DIR="$HOME/.xiaomo/source"
AWS_BASE_DIR="$HOME/.xiaomo/source/aws_linux2"
echo 设置环境变量:BASE_DIR= ${BASE_DIR}

mkdir -p "$BASE_DIR"
# shellcheck disable=SC2164
cd "$BASE_DIR"
git clone https://github.com/houko/xiaomo-auto-config.git "$BASE_DIR"
git pull

echo '################# 开始初始化aws_linux2设置 #################'
sh "$AWS_BASE_DIR"/init/init_aws_linux2.sh

echo '#################### 开始设置inputrc ###################'
sh "$AWS_BASE_DIR"/input/init_inputrc.sh

echo '################# 开始配置环境变量和别名 #################'
sh "$AWS_BASE_DIR"/env/install.sh

echo '#################### 开始安装docker ###################'
sh "$AWS_BASE_DIR"/docker/install.sh

echo '################## 开始安装k8s及周边工具 ################'
sh "$AWS_BASE_DIR"/k8s/install.sh

echo '################### 开始安装fzf检索工具 #################'
sh "$AWS_BASE_DIR"/fzf/install.sh

echo '#################### 开始安装zsh工具 ###################'
sh "$AWS_BASE_DIR"/zsh/install.sh
