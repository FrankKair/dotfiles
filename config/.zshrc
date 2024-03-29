# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/frankkair/.oh-my-zsh"
ZSH_THEME="af-magic"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# User configuration
. $HOME/.config/shell-utils/general.sh
. $HOME/.config/shell-utils/git.sh
. $HOME/.config/shell-utils/navigation.sh
. $HOME/.config/shell-utils/ruby.sh
. $HOME/.config/shell-utils/ocaml.sh
. $HOME/.config/shell-utils/nvm.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# Search for dotfiles and ignore git files
export FZF_DEFAULT_COMMAND="rg --files --follow --no-ignore-vcs --hidden -g '!{**/.git/*}'"
