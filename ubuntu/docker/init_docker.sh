BASE_DIR="$HOME/.xiaomo"
curl -fsSL get.docker.com -o get-docker.sh
sh get-docker.sh
#chmod 666 /var/run/docker.sock
usermod -aG docker $USER

cp $BASE_DIR/source/docker/daemon.json /etc/docker/daemon.json

mkdir -p /etc/systemd/system/docker.service.d
systemctl daemon-reload
systemctl restart docker
docker info | grep "Cgroup Driver"

systemctl start docker
systemctl enable docker

# 测试
docker run hello-world
