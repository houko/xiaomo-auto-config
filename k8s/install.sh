echo 开始安装 minikube
brew install minikube

echo 启动minikube
minikube start

echo 开始安装kubectx
brew install kubectx
kubectx -v

echo 开始安装k8s包管理器helm
brew install helm