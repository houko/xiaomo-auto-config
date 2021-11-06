# vpn工具
brew install viscosity
git clone https://github.com/andrewschleifer/viscosity-alfredworkflow.git $HOME/Library/Application\ Support/Alfred/Alfred.alfredpreferences/workflows/viscosity

# vpn命令 connect xxx  | disconnect xxx
echo "alias vpn='sh $HOME/.xiaomo/source/viscosity.sh'" >>$HOME/shell/alias.sh
