# shellcheck disable=SC2034
AWS_BASE_DIR="$HOME/.xiaomo/source/aws_linux2/"
echo 将~/.alias文件链接到alish.sh别名配置
ln -sf "AWS_BASE_DIR/env/alias.sh" "$HOME/.alias"
