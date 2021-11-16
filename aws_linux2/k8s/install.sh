AWS_BASE_DIR="$HOME/.xiaomo/source/aws_linux2"

sudo cp "$AWS_BASE_DIR"/k8s/kubernetes.repo /etc/yum.repos.d

yum update
echo "🍡 开始安装kubectl"
yum install -y kubectl kubeadm
echo k8s版本
kubectl version
echo kbadm版本
kubeadm version
systemctl enable --now kubelet


(
  set -x
  cd "$(mktemp -d)" &&
    OS="$(uname | tr '[:upper:]' '[:lower:]')" &&
    ARCH="$(uname -m | sed -e 's/x86_64/amd64/' -e 's/\(arm\)\(64\)\?.*/\1\2/' -e 's/aarch64$/arm64/')" &&
    KREW="krew-${OS}_${ARCH}" &&
    curl -fsSLO "https://github.com/kubernetes-sigs/krew/releases/latest/download/${KREW}.tar.gz" &&
    tar zxvf "${KREW}.tar.gz" &&
    ./"${KREW}" install krew
)

export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
kubectl krew install ctx
kubectl krew install ns

cd /tmp
git clone https://github.com/ahmetb/kubectx
cp kubectx/kube* /usr/local/bin/
