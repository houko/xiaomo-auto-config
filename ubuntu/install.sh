#!/bin/bash

UBUNTU_BASE_DIR="$HOME/.xiaomo/source/ubuntu/"
echo export BASE_DIR=$UBUNTU_BASE_DIR >>~/.bashrc
# shellcheck source=/Users/xiaomo/.bashrc
source ~/.bashrc
echo '######################################################'
echo 设置环境变量:BASE_DIR= ${BASE_DIR}
echo '######################################################'

# 安装git并配置
apt install git -y
echo '######################################################'
echo '#################### 开始安装git.....'
echo '######################################################'

mkdir -p "$UBUNTU_BASE_DIR"
# shellcheck disable=SC2164
cd "$UBUNTU_BASE_DIR"
git clone https://github.com/houko/macOrLinuxConfigSetup.git "$UBUNTU_BASE_DIR"
echo '######################################################'
echo clone代码到"${UBUNTU_BASE_DIR}"/source下
echo '######################################################'
git pull

sh "$UBUNTU_BASE_DIR"/ubuntu/init_ubuntu.sh
echo '######################################################'
echo '################# 开始初始化ubuntu设置 #################'
echo '######################################################'

echo '######################################################'
echo '#################### 开始设置inputrc ###################'
echo '######################################################'
sh "$UBUNTU_BASE_DIR"/input/init_inputrc.sh

echo '######################################################'
echo '################# 开始配置环境变量和别名 #################'
echo '######################################################'
sh "$UBUNTU_BASE_DIR"/env/init_env.sh

echo '######################################################'
echo '#################### 开始安装vim环境 ###################'
echo '######################################################'
sh $UBUNTU_BASE_DIR/vim/init_vim.sh

echo '######################################################'
echo '#################### 安装并开启ssh工具 #################'
echo '######################################################'
sh "$UBUNTU_BASE_DIR"/ssh/init_ssh.sh

echo '######################################################'
echo '#################### 开始安装docker ###################'
echo '######################################################'
sh "$UBUNTU_BASE_DIR"/docker/init_docker.sh

echo '######################################################'
echo '################## 开始安装k8s及周边工具 ################'
echo '######################################################'
sh "$UBUNTU_BASE_DIR"/k8s/init_k8s.sh
sh "$UBUNTU_BASE_DIR"/k8s/init_kubectx.sh

echo '######################################################'
echo '################### 开始安装fzf检索工具 #################'
echo '######################################################'
sh "$UBUNTU_BASE_DIR"/fzf/init_fzf.sh

echo '######################################################'
echo '#################### 开始安装zsh工具 ###################'
echo '######################################################'
sh "$UBUNTU_BASE_DIR"/zsh/init_zsh.sh
