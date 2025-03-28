#!/usr/bin/env sh
echo "Starting setup"

echo "OhMyZsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "xcode-select install"
xcode-select --install

echo "Nerd fonts"
brew install font-hack-nerd-font

echo "~ Applications"
brew install --cask the-unarchiver
brew install --cask rectangle
brew install --cask maccy
brew install --cask firefox
brew install --cask google-drive
brew install --cask spotify

echo "~ Developer tools"
brew install --cask ghostty
brew install neovim
brew install fzf
brew install ripgrep
brew install bat
brew install gh
brew install gitui
brew install diff-so-fancy

echo "~ Personal"
brew install translate-shell
brew install --cask transmission
brew install --cask vlc
brew install --cask anki
brew install --cask calibre
brew install --cask basictex
brew install --cask fontforge
brew install pandoc
