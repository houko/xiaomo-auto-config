BASE_DIR=$HOME/.xiaomo/source

echo 开始安装tmux
brew install tmux

# tmux
echo "alias tl='tmux list-sessions'" >>$BASE_DIR/shell/alias.sh
echo "alias tks='tmux kill-session -t'" >>$BASE_DIR/shell/alias.sh
echo "alias ta='tmux attach -t'" >>$BASE_DIR/shell/alias.sh
echo "alias ts='tmux new-session -s'" >>$BASE_DIR/shell/alias.sh
