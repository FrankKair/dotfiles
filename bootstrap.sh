#!/usr/bin/env sh
echo "Starting setup\n"

echo "OhMyZsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "xcode-select install"
xcode-select --install

echo "~ Applications"
brew install --cask the-unarchiver
brew install --cask transmission
brew install --cask vlc
brew install --cask calibre
brew install --cask anki
brew install --cask basictex

brew install --cask rectangle
brew install --cask maccy
brew install --cask clipy
brew install --cask hiddenbar
brew install --cask mouse-fix
brew install --cask fontforge

brew install --cask firefox
brew install --cask finicky

brew install --cask google-drive
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
brew install neovim
brew install tig
brew install gitui
brew install diff-so-fancy
brew install gh

brew install fzf
brew install ripgrep
brew install bat
brew install exa

brew install pandoc
brew install translate-shell
brew install tmux

brew install shellcheck
brew install infer

brew install koekeishiya/formulae/skhd

echo "~ vim-plug"
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#brew install screenfetch
#brew install --cask google-chrome
#brew install --cask brave-browser
#brew install --cask openinterminal
#brew install --cask amethyst
#brew install --cask lunar
#brew install --cask fsnotes
#brew install --cask background-music
#brew install --cask eul
#brew install --cask alt-tab
