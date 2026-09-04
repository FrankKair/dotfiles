#!/bin/bash
if [[ "$(uname)" != "Darwin" ]]; then
  echo "  Skipping macOS defaults (not macOS)"
  return 0 2>/dev/null || exit 0
fi

# Faster key repeats
defaults write -g InitialKeyRepeat -int 10
defaults write -g KeyRepeat -int 1
# Mouse tracking speed
defaults write -g com.apple.mouse.scaling  14.0
# No .DS_Store files
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true
