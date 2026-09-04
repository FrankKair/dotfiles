#!/bin/bash
set -e

echo "Reverting dotfiles..."

# Restore backups or remove symlinks ---------------------------------
revert() {
  if [ -L "$1" ]; then
    rm "$1"
    if [ -f "$1.bak" ]; then
      mv "$1.bak" "$1"
      echo "  Restored $1 from backup"
    else
      echo "  Removed symlink $1 (no backup found)"
    fi
  fi
}

revert ~/.zshrc
revert ~/.gitconfig
revert ~/.gitignore
revert ~/.gitignore_global
revert ~/.vimrc

# Remove zsh config symlinks -----------------------------------------
if [ -d ~/.config/zsh ]; then
  rm -f ~/.config/zsh/*sh
  rmdir ~/.config/zsh 2>/dev/null && echo "  Removed ~/.config/zsh/" || true
fi

echo ""
echo "Done. Open a new terminal to use the restored config."
