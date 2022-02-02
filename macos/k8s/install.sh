echo 🌽 开始安装 minikube
brew install minikube

echo 🌽 启动minikube
minikube start

echo 🌽 开始安装kubectx
brew install kubectx

echo 🌽 开始安装k8s包管理器helm
brew install helm

echo 🌽 开始安装密钥管理工具vault
brew tap hashicorp/tap
brew install hashicorp/tap/vault

echo 🌽 开始安装密钥存储库consul
brew install hashicorp/tap/consul

echo 🌽 开始安装k8s监控工具lens
brew install lens

echo 🌽 开始安装k8s包管理器kustomize
brew install kustomize