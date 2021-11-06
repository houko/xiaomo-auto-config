sudo python3 -m pip install -U pip
pip --version
sudo python3 -m pip install psutil pyflakes pygments requests sh Snape termcolor virtualenv

# for configuration in .config
mkdir -p "$HOME/.config"
ln -sf /usr/local/bin/python3 /usr/local/bin/python
echo /usr/local/bin/python3 link to /usr/local/bin/python

ln -sf /usr/local/bin/pip3 /usr/local/bin/pip
echo /usr/local/bin/pip3 link to /usr/local/bin/pip
