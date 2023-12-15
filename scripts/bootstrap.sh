#!/usr/bin/env sh
echo "Starting setup"

echo "OhMyZsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "xcode-select install"
xcode-select --install

echo "Nerd fonts"
brew tap homebrew/cask-fonts
brew cask install font-hack-nerd-font

echo "~ Applications"
brew install --cask the-unarchiver
brew install --cask rectangle
brew install --cask maccy
brew install --cask mouse-fix
brew install --cask firefox
brew install --cask google-drive
brew install --cask spotify

echo "~ Developer tools"
brew install --cask alacritty
brew install neovim
brew install tmux
brew install fzf
brew install ripgrep
brew install bat
brew install exa
brew install gh
brew install gitui
brew install diff-so-fancy
brew install translate-shell

echo "~ Personal"
brew install --cask transmission
brew install --cask vlc
brew install --cask anki
brew install --cask calibre
brew install --cask basictex
brew install --cask fontforge
brew install pandoc
