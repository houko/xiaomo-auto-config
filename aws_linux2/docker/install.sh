echo "🍉 开始安装docker"
sudo amazon-linux-extras install -y docker

echo "🍉 给ec2-user授权"
sudo usermod -a -G docker ${whoami}

echo "🍉 当前docker版本"
docker version

echo "🍉 启动docker"
sudo systemctl start docker

echo "🍉 确认docker进程是否运行"
ps aux | grep docker

echo "🍉 设置docker开机自启"
sudo systemctl enable docker

echo "🍉 查看docker运行状态"
sudo systemctl status docker

#echo "开始安装docker compose"
#sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/bin/docker-compose
#sudo chmod +x /usr/bin/docker-compose
#docker-compose version

echo "🍉 测试运行 hello-world镜像"
docker run hello-world
