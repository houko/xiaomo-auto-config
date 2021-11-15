# 先更新源清理老的安装包
sudo yum update -y
sudo yum upgrade -y
sudo yum autoremove -y

echo "当前使用的linux版本"
cat /etc/os-release

echo "安装g++"
sudo yum install -y gcc-c++ make

echo "开始安装nmap"
sudo yum install -y nmap
