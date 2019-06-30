#!/usr/bin/env bash
echo "Starting setup\n"

echo "OhMyZsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "git-open plugin"
# Don't forget to add git-open to .zshrc plugin=(... git-open)
git clone https://github.com/paulirish/git-open.git $ZSH_CUSTOM/plugins/git-open

echo "~ Applications"
brew cask install visual-studio-code
brew cask install postman
brew cask install spotify
brew cask install slack
brew cask install the-unarchiver
brew cask install transmission
brew cask install google-chrome
brew cask install firefox
brew cask install mplayerx

echo "~ Tools"
brew install yarn
brew install diff-so-fancy
brew install bat
brew install rbenv

echo "~ Programming Languages"
brew install node
brew install python3
brew install lua
brew install go

echo "~ TypeScript & ts-node"
npm install -g ts-node
npm install -g typescript

echo "~ rustup"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
