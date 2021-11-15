# shellcheck disable=SC2034
AWS_BASE_DIR="$HOME/.xiaomo/source/aws_linux2"

echo "git版本"
git --version

echo "设置git默认配置"
ln -sf "$AWS_BASE_DIR/git/gitconfig" "$HOME/.gitconfig"
