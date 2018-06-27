#!/usr/bin/env bash
echo "Starting setup\n"

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "~ Applications"
brew cask install visual-studio-code
brew cask install postman
brew cask install spotify
brew cask install slack
brew cask install skype

echo "~ Tools"
brew install yarn
brew install diff-so-fancy
brew install bat
# rbenv
# rubocop

echo "~ Programming Languages"
# Python 3
brew install lua
brew install go
brew install rust
