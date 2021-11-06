BASE_DIR="$HOME/.xiaomo/source"

echo 开始安装hammerspoon
brew install hammerspoon

echo 安装hammerspoon插件 "$BASE_DIR/hammerspoon" link to "$HOME/.hammerspoon"
ln -sf "$BASE_DIR/hammerspoon" "$HOME/.hammerspoon"
