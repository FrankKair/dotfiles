# Faster key repeats
defaults write -g InitialKeyRepeat -int 10
defaults write -g KeyRepeat -int 1

# Remove workspace animations
defaults write com.apple.dock workspaces-swoosh-animation-off -bool YES
defaults write com.apple.dock expose-animation-duration -float 0.20; killall Dock

# Faster launchpad
defaults write com.apple.dock springboard-show-duration -float 0.10
defaults write com.apple.dock springboard-hide-duration -float 0.10

# No .DS_Store files
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# defaults write -g AppleDisplayScaleFactor -float
# defaults write -g NSNavPanelIconViewIconSizeForOpenMode -number
