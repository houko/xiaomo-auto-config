# 先更新源清理老的安装包
apt update -y
apt upgrade -y
apt autoremove -y

BASE_DIR="$HOME/.xiaomo"
# 允许root登陆
cp -f "$BASE_DIR"/source/ubuntu/50-ubuntu.conf /usr/share/lightdm/lightdm.conf.d/50-ubuntu.conf
cp -f "$BASE_DIR"/source/ubuntu/gdm-autologin.conf /etc/pam.d/gdm-autologin
cp -f "$BASE_DIR"/source/ubuntu/gdm-password.conf /etc/pam.d/gdm-password

# 关闭Swap
swapoff -a
sed 's/.*swap.*/#&/' /etc/fstab
swapoff -v /swap.img
# 删除交换分区文件
rm -rf /swap.img
free -m

# 关闭Selinux
apt install -y policycoreutils selinux-utils selinux-basics
selinux-config-enforcing
sestatus

systemctl enable kubelet
systemctl start kubelet
systemctl status kubelet