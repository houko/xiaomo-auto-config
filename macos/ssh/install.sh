BASE_DIR=$HOME/.xiaomo/source

echo 🍗 开始配置ssh
mkdir -p $HOME/.ssh
cp $BASE_DIR/ssh/id_rsa* $HOME/.ssh
cp $BASE_DIR/ssh/*.pem $HOME/.ssh
chmod 700 $HOME/.ssh
touch $HOME/.ssh/authorized_keys
chmod 600 $HOME/.ssh/authorized_keys

echo 🍗 开始写入授权密钥
cat $HOME/.ssh/id_rsa.pub >>authorized_keys
cat $HOME/.ssh/authorized_keys