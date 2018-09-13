#!/usr/bin/env bash
echo "Starting setup\n"

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Git open plugin
# Don't forget to add git-open to .zshrc plugin=(... git-open)
git clone https://github.com/paulirish/git-open.git $ZSH_CUSTOM/plugins/git-open

echo "~ Applications"
brew cask install visual-studio-code
brew cask install postman
brew cask install spotify
brew cask install slack
brew cask install skype
brew cask install transmission

echo "~ Tools"
brew install yarn
brew install diff-so-fancy
brew install bat
# rbenv
# rubocop

echo "~ Programming Languages"
brew install python3
brew install lua
brew install go
brew install rust
