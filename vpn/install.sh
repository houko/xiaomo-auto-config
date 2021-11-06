BASE_DIR="$HOME/.xiaomo/source"

echo 开始安装vpn工具viscosity
brew install viscosity

echo 安装alfred的vpn工具
git clone https://github.com/andrewschleifer/viscosity-alfredworkflow.git $HOME/Library/Application\ Support/Alfred/Alfred.alfredpreferences/workflows/viscosity

# vpn命令 connect xxx  | disconnect xxx
echo 生成vpn快捷指令的别名vpn
echo "alias vpn='sh $BASE_DIR/viscosity.sh'" >>$HOME/shell/alias.sh
