echo 🍁 开始安装brew
bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo 🍁 添加eval到zprofile和shellenv
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >>$HOME/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
source $HOME/.zprofile

echo 🍁 添加cask和cask-fonts源
brew tap homebrew/cask
brew tap homebrew/cask-fonts
brew tap homebrew/cask-versions

echo 🍁 自动更新和清理
brew update
brew upgrade
brew cleanup
