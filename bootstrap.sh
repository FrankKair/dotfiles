#!/usr/bin/env sh 
echo "Starting setup\n"

echo "OhMyZsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "xcode-select install"
xcode-select --install

echo "git-open plugin"
# Don't forget to add git-open to .zshrc plugin=(... git-open)
git clone https://github.com/paulirish/git-open.git $ZSH_CUSTOM/plugins/git-open

echo "~ Applications"
brew cask install visual-studio-code
brew cask install emacs
brew cask install firefox
brew cask install google-chrome
brew cask install insomnia 
brew cask install spotify
brew cask install slack
brew cask install the-unarchiver
brew cask install transmission
brew cask install vlc
brew cask install google-backup-and-sync

echo "~ Tools"
brew install neovim
brew install yarn
brew install fzf
brew install bat
brew install diff-so-fancy
brew install rbenv

echo "~ vim-plug"
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "~ Programming Languages"
brew install node
brew install python3
brew install lua
brew install go
brew install ocaml
brew install opam

echo "~ TypeScript & ts-node"
npm install -g ts-node
npm install -g typescript

echo "~ rustup"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
