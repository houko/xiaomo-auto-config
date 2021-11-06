cp $BASE_DIR/source/ssh/id_rsa* $HOME/.ssh
cp $BASE_DIR/source/ssh/*.pem $HOME/.ssh
mkdir ip ~/.ssh
chmod 700 ~/.ssh
touch ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys
cat ~/.ssh/id_rsa.pub >>authorized_keys
cat ~/.ssh/authorized_keys
