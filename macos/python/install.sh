echo 🍉 更新pip3的版本
python3 -m pip install --upgrade pip

echo 🍉 pip3的版本
pip --version

echo 🍉 安装python常用工具包
sudo python3 -m pip install psutil pyflakes pygments requests sh termcolor virtualenv

echo 🍉 创建python软连接
sudo ln -sf /usr/local/bin/python3 /usr/local/bin/python

echo 🍉 创建pip软连接
sudo ln -sf /usr/local/bin/pip3 /usr/local/bin/pip
