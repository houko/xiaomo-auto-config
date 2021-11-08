MAC_BASE_DIR="$HOME/.xiaomo/source/macos"

echo 👀 开始安装hammerspoon
brew install hammerspoon

echo 👀 安装hammerspoon插件 "$MAC_BASE_DIR"/hammerspoon link to "$HOME"/.hammerspoon
ln -sf "$MAC_BASE_DIR"/hammerspoon "$HOME"/.hammerspoon
