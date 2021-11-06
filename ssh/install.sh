BASE_DIR=$HOME/.xiaomo/source

echo 🍗 开始配置ssh
cp $BASE_DIR/ssh/id_rsa* $HOME/.ssh
cp $BASE_DIR/ssh/*.pem $HOME/.ssh
mkdir -p ~/.ssh
chmod 700 ~/.ssh
touch ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys

echo 🍗 开始写入授权密钥
cat ~/.ssh/id_rsa.pub >>authorized_keys
cat ~/.ssh/authorized_keys