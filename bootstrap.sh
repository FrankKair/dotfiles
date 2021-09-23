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
brew install --cask the-unarchiver
brew install --cask transmission
brew install --cask vlc
brew install --cask calibre
brew install --cask anki
brew install --cask basictex

brew install --cask rectangle
brew install --cask amethyst
brew install --cask eul
brew install --cask alt-tab
brew install --cask maccy
brew install --cask clipy
brew install --cask hiddenbar
brew install --cask openinterminal
brew install --cask fsnotes
brew install --cask background-music
brew install --cask mouse-fix
brew install --cask fontforge

brew install --cask brave-browser
brew install --cask firefox
brew install --cask google-chrome
brew install --cask finicky

brew install --cask google-backup-and-sync
brew install --cask spotify
brew install --cask slack

echo "~ Developer tools"
brew install --cask alacritty
brew install --cask iterm2
brew install --cask visual-studio-code
brew install --cask emacs
brew install --cask insomnia 
brew install --cask postman
brew install --cask docker

echo "~ CLIs"
brew install pandoc
brew install translate-shell
brew install tmux
brew install neovim
brew install gitui
brew install ripgrep
brew install bat
brew install exa
brew install diff-so-fancy
brew install shellcheck
brew install infer
brew install fzf
brew install yarn
brew install screenfetch
brew install koekeishiya/formulae/skhd

echo "~ vim-plug"
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "~ Programming Languages"
brew install node
brew install typescript
brew install go
brew install python3
brew install lua
brew install ocaml
brew install opam
brew install elm

echo "~ nvm (node version manager)"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

echo "~ ts-node"
npm install -g ts-node

echo "~ rustup"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
