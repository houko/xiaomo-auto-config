UBUNTU_BASE_DIR="$HOME/.xiaomo/source/ubuntu/"
source ~/.bashrc
sudo yum install zsh -y
usermod -s /bin/zsh $(whoami)
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"/plugins/zsh-autosuggestions
# p10k configure 可以重新配置
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"/plugins/zsh-syntax-highlighting

# 删除原来的.zsh文件并将配置好的代码链接到zsh
ln -sf "$UBUNTU_BASE_DIR/zsh/zshrc" "$HOME/.zshrc"
echo "$UBUNTU_BASE_DIR/zsh/zshrc" link to "$HOME/.zshrc"
