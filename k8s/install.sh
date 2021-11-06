echo 开始安装 minikube
brew install minikube

echo 启动minikube
minikube start

echo 开始安装kubectx
brew install kubectx
kubectx -v

echo 开始安装k8s包管理器helm
brew install helm

# kubectl setting
echo "alias k=kubectl" >>$BASE_DIR/shell/alias.sh
echo "alias kubeclt=kubectl" >>$BASE_DIR/shell/alias.sh
echo "alias kubctl=kubectl" >>$BASE_DIR/shell/alias.sh
echo "alias kx=kubectx" >>$BASE_DIR/shell/alias.sh
echo "alias kg='kubectl get'" >>$BASE_DIR/shell/alias.sh
echo "alias kgp='kubectl get pods'" >>$BASE_DIR/shell/alias.sh
echo "alias kgn='kubectl get nodes'" >>$BASE_DIR/shell/alias.sh
echo "alias kgpjson='kubectl get pods -o=json'" >>$BASE_DIR/shell/alias.sh
echo "alias kgpn='kubectl get pods -n'" >>$BASE_DIR/shell/alias.sh
