#!/bin/bash
set -e

DOTFILES="$(cd "$(dirname "$0")" & pwd)"

echo "Linking dotfiles from $DOTFILES"
echo ""

# Backup existing files (only if not already symlinks)
backup() {
  if [ -e "$1" ] && [ ! -L "$1" ]; then
    cp "$1" "$1.bak"
    echo "  Backed up $1 -> $1.bak"
  fi
}

# Zsh ----------------------------------------------------------------
backup ~/.zshrc
ln -sfv "$DOTFILES/.zshrc" ~/.zshrc

mkdir -p ~/.config/zsh
for f in "$DOTFILES/zsh/config"*.zsh; do
  ln -sfv "$f" ~/.config/zsh/
done

# Git ----------------------------------------------------------------
backup ~/.gitconfig
backup ~/.gitignore
backup ~/.gitignore_global
ln -sfv "$DOTFILES/git/.gitconfig" ~/.gitconfig
ln -sfv "$DOTFILES/git/.gitignore" ~/.gitignore
ln -sfv "$DOTFILES/git/.gitignore_global" ~/.gitignore_global

# Vim ----------------------------------------------------------------
backup ~/.vimrc
ln -sfv "$DOTFILES/.vimrc" ~/.vimrc

# Neovim -------------------------------------------------------------
if [ -d ~/.config/nvim/.git ]; then
  echo "Neovim config already exists at ~/.config/nvim, skipping"
else
  echo "Cloning neovim config..."
  git clone https://github.com/FrankKair/nvim.git ~/.config/nvim
fi

echo ""
echo "Done. Restart your shell or: source ~/.zshrc"
