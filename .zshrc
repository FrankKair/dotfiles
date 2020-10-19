# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/frankkair/.oh-my-zsh"
ZSH_THEME="af-magic"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# User configuration
alias zrc='nvim ~/.zshrc'
alias ip='ifconfig | grep "inet " | grep -Fv 127.0.0.1 | cut -f 2 -d " "'
alias hgi='history | grep -i'
alias gcane='git commit --amend --no-edit'
alias tree='exa --tree'
function cs () { cd "$@" && ls }
function o () {
	if [ $# -eq 0 ]; then open .;
	else open "$@";
	fi;
}
function ctx () { history | rg "$1" -C "$2" }

