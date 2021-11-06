# 检测shell语法是否有错
brew install shellcheck

# 安装oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
# p10k configure 可以重新配置
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"/plugins/zsh-syntax-highlighting

# 别名
ln -sf "$BASE_DIR/source/shell/alias.sh" "$HOME/.alias"
echo "$BASE_DIR/source/shell/alias.sh" link to "$HOME/.alias"

#环境变量
ln -sf "$BASE_DIR/source/shell/envrc.sh" "$HOME/.envrc"
echo "$BASE_DIR/source/shell/envrc.sh" link to "$HOME/.envrc"

# zsh

rm -rf "$HOME/.zshrc"
ln -sf "$BASE_DIR/source/shell/zshrc" "$HOME/.zshrc"
echo "$BASE_DIR/source/shell/zshrc" link to "$HOME/.zshrc"

# inputrc

ln -sf "$BASE_DIR/source/inputrc.sh" "$HOME/.inputrc"
echo "$BASE_DIR/source/inputrc.sh" link to "$HOME/.inputrc"
