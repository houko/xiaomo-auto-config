# disable the dashboard
defaults write com.apple.dashboard mcx-disabled -bool TRUE
killall Dock

# be quiet please finder
defaults write com.apple.finder FinderSounds -bool FALSE
killall Finder

# disable delay when
defaults write com.apple.dock autohide-fullscreen-delayed -bool FALSE
killall Dock

# minimize key repeat
defaults write -g InitialKeyRepeat -int 10
defaults write -g KeyRepeat -int 1
