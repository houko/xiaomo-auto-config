BASE_DIR="$HOME/.xiaomo/source"

echo 开始安装vpn工具viscosity
brew install viscosity

echo 安装alfred的vpn工具
git clone https://github.com/andrewschleifer/viscosity-alfredworkflow.git $HOME/Library/Application\ Support/Alfred/Alfred.alfredpreferences/workflows/viscosity
