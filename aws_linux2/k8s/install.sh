AWS_BASE_DIR="$HOME/.xiaomo/source/aws_linux2"

sudo cp "$AWS_BASE_DIR"/k8s/kubernetes.repo /etc/yum.repos.d

sudo yum update -y
echo "🍡 开始安装kubectl"
sudo yum install -y kubectl kubeadm
sudo systemctl enable kubelet.service

echo "🍡 k8s版本"
kubectl version --short --client

echo "🍡 kubeadm版本"
kubeadm version


cd /tmp
git clone https://github.com/ahmetb/kubectx
sudo cp kubectx/kube* /usr/local/bin/
