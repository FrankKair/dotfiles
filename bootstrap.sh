#!/bin/bash
set -e

CORE=(neovim fzf ripgrep bat diff-so-fancy translate-shell)
CORE_CASKS=(ghostty rectangle maccy firefox)
CORE_FONTS=(font-iosevka)
HOME_CASKS=(the-unarchiver google-drive spotify transmission vlc)

INSTALL_HOME=false
for arg in "$@"; do
  case "$arg" in
    --home) INSTALL_HOME=true ;;
    *)      echo "Unknown flag: $arg"; echo "Usage: ./bootstrap.sh [--home]"; exit 1 ;;
  esac
done

echo "Installing pre-requisites..."
xcode-select --install 2>/dev/null | echo "  Xcode CLI tools already installed"

if ! command -v brew &>/dev/null; then
  echo "Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "  Homebrew already installed"
fi

brew update
echo ""
echo "Installing core tools..."
brew install "${CORE[@]}"
brew install "${CORE_FONTS[@]}"
brew install --cask "${CORE_CASKS[@]}"

if $INSTALL_HOME; then
  echo ""
  echo "Installing home apps..."
  brew install --cask "${HOME_CASKS[@]}"
fi

# macOS defaults ------------------------------------------
echo ""
echo "Applying macOS defaults..."
source "$(cd "$(dirname "$0")" && pwd)/macos.sh"

echo ""
echo "Done. Run ./install.sh next to link config files."
