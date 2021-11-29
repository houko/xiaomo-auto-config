#!/bin/bash

BASE_DIR="$HOME/.xiaomo/source"
UBUNTU_BASE_DIR="$HOME/.xiaomo/source/ubuntu"

echo export BASE_DIR=$UBUNTU_BASE_DIR >>~/.bashrc
# shellcheck source=/Users/xiaomo/.bashrc
source ~/.bashrc
echo 设置环境变量:BASE_DIR= ${BASE_DIR}

# 安装git并配置
apt install git -y

mkdir -p "$BASE_DIR"
# shellcheck disable=SC2164
cd "$BASE_DIR"
git clone https://github.com/houko/macOrLinuxConfigSetup.git "$BASE_DIR"
echo clone代码到"${BASE_DIR}"/source下
git pull

sh "$UBUNTU_BASE_DIR"/init_ubuntu.sh

sh "$UBUNTU_BASE_DIR"/input/init_inputrc.sh

sh "$UBUNTU_BASE_DIR"/env/init_env.sh

sh $UBUNTU_BASE_DIR/vim/init_vim.sh

sh "$UBUNTU_BASE_DIR"/ssh/init_ssh.sh

sh "$UBUNTU_BASE_DIR"/docker/init_docker.sh

sh "$UBUNTU_BASE_DIR"/k8s/init_k8s.sh
sh "$UBUNTU_BASE_DIR"/k8s/init_kubectx.sh

sh "$UBUNTU_BASE_DIR"/fzf/init_fzf.sh

sh "$UBUNTU_BASE_DIR"/zsh/init_zsh.sh
