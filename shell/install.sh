BASE_DIR="$HOME/.xiaomo/source"

echo 安装检测shell语法是否有错的脚本shellcheck
brew install shellcheck

echo 开始安装oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo 开始安装zsh自动补全工具zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions

echo 开始安装zsh主题，p10k configure 可以重新配置
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"/themes/powerlevel10k

echo 开始安装zsh语法高亮
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"/plugins/zsh-syntax-highlighting

echo 生成alias软连接
ln -sf "$BASE_DIR/shell/alias.sh" "$HOME/.alias"

echo 生成zshrc配置软连接
rm -rf "$HOME/.zshrc"
ln -sf "$BASE_DIR/shell/zshrc" "$HOME/.zshrc"

echo 生成inputrc软连接
ln -sf "$BASE_DIR/inputrc.sh" "$HOME/.inputrc"
