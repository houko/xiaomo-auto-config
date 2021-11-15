echo "🍡 开始安装n和node"
sudo curl -L https://raw.githubusercontent.com/tj/n/master/bin/n -o n
sudo bash n lts
# Now node and npm are available
sudo npm install -g n
