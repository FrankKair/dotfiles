# Faster key repeats
defaults write -g InitialKeyRepeat -int 10
defaults write -g KeyRepeat -int 1

# Mouse tracking speed
defaults write -g com.apple.mouse.scaling  14.0

# No .DS_Store files
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true
