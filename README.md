# 前提条件

安装xcode

# 注意事项

- 在默认终端下执行命令
- 安装时需要多次输入管理员用户密码

# install

bash -c "$(curl -fsSL https://raw.githubusercontent.com/houko/linux-mac-auto-config/macos/install.sh)"    

# uninstall
bash -c "$(https://raw.githubusercontent.com/houko/linux-mac-auto-config/macos/uninstall.sh)"

# macos vm
you will get the error: [bad cpu type in executable](https://apple.stackexchange.com/questions/408375/zsh-bad-cpu-type-in-executable)    

`softwareupdate --install-rosetta`
