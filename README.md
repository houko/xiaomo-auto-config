# macos

## 前提条件

安装xcode

## 注意事项

- 在默认终端下执行命令
- 安装时需要多次输入管理员用户密码

## install

bash -c "$(curl -fsSL https://raw.githubusercontent.com/houko/xiaomo-auto-config/master/macos/install.sh)"

## uninstall

bash -c "$(https://raw.githubusercontent.com/houko/xiaomo-auto-config/master/macos/uninstall.sh)"

## macos vm

you will get the
error: [bad cpu type in executable](https://apple.stackexchange.com/questions/408375/zsh-bad-cpu-type-in-executable)

`softwareupdate --install-rosetta`

# ubuntu

## change root(if you are root please skip this)

- sudo -i
- passwd root

## prepare

- apt update -y && apt upgrade -y && apt install curl

## install

- curl -L https://raw.githubusercontent.com/houko/xiaomo-auto-config/master/ubuntu/install.sh | sh

## kubeadm

kubeadm init


# Amazon Linux 2

## change root(if you are root please skip this)

- sudo -i
- passwd root

## prepare

- apt update -y && apt upgrade -y && apt install curl

## install

- curl -L https://raw.githubusercontent.com/houko/xiaomo-auto-config/master/aws_linux2/install.sh | sh

## kubeadm

kubeadm init