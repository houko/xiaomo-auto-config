BASE_DIR="$HOME/.xiaomo/source"

apt install net-tools -y
apt install openssh-server -y
systemctl status ssh
ufw allow ssh

# 创建ssh密钥 密码是一个空格
cp $BASE_DIR/ssh/id_rsa* $HOME/.ssh
chmod 700 ~/.ssh
touch ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys
cat ~/.ssh/id_rsa.pub >>authorized_keys
cat ~/.ssh/authorized_keys
echo PermitRootLogin yes >>/etc/ssh/sshd_config
systemctl restart ssh
