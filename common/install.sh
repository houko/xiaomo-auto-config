#!/bin/bash

BASE_DIR="$HOME/.g123"
brew install git

xcode-select --install 2>/dev/null || true
git clone https://github.com/houko/LinuxMacSetup.git "$BASE_DIR/source"

# gnu官方的一系列工具
brew install coreutils
brew install findutils
brew install gawk
brew install gnu-sed


  # google fira-code字体
  brew install font-fira-code




