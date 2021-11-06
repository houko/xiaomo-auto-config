BASE_DIR=$HOME/.xiaomo/source

echo 开始配置ssh
cp $BASE_DIR/ssh/id_rsa* $HOME/.ssh
cp $BASE_DIR/ssh/*.pem $HOME/.ssh
mkdir ip ~/.ssh
chmod 700 ~/.ssh
touch ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys
cat ~/.ssh/id_rsa.pub >>authorized_keys
cat ~/.ssh/authorized_keys

echo 生成一个新的sshkey的别名
echo 'alias key="ssh-keygen"' >>$BASE_DIR/shell/alias.sh
echo "alias gssh='ssh-keygen'" >>$BASE_DIR/shell/alias.sh

echo 生成查看外网Ip的别名 ip
echo "alias ip='dig +short myip.opendns.com @resolver1.opendns.com'" >>$BASE_DIR/shell/alias.sh

echo 生成查看本机ip的别名 localhost
echo "alias localhost='ipconfig getifaddr en0'" >>$BASE_DIR/shell/alias.sh
