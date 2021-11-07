UBUNTU_BASE_DIR="$HOME/.xiaomo/source/ubuntu"
apt install git -y
ln -sf "UBUNTU_BASE_DIR/git/gitconfig" "$HOME/.gitconfig"
echo "UBUNTU_BASE_DIR/git/gitconfig" link to "$HOME/.gitconfig"
