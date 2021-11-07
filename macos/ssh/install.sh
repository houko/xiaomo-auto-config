BASE_DIR=$HOME/.xiaomo/source

echo 🍗 开始配置ssh
mkdir -p $HOME/.ssh
cp "$MAC_BASE_DIR"/ssh/id_rsa* $HOME/.ssh
cp "$MAC_BASE_DIR"/ssh/*.pem $HOME/.ssh
chmod 700 $HOME/.ssh
touch $HOME/.ssh/authorized_keys
chmod 600 $HOME/.ssh/authorized_keys
