MAC_BASE_DIR="$HOME/.xiaomo/source/macos"
git config --global pull.ff only

echo 🐱 开始安装github cli
brew install gh

echo 🐱 开始安装git提交记录查询增强工具 需要在git仓库中运行
brew install tig
tig -v

echo 🐱 开始设置git配置项和全局忽略文件
ln -sf "$MAC_BASE_DIR"/git/gitconfig "$HOME"/.gitconfig
