BASE_DIR="$HOME/.xiaomo/source"

echo 开始安装片段管理工具snpae
pip3 install snape

echo 开始生成snape默认snape片段
ln -sf "$BASE_DIR/snape/snape.json" "$HOME/.snape.json"
