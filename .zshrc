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
alias gcane='git commit --amend --no-edit && git push --force'
alias tree='exa --tree'
alias ls='exa'
alias cat='bat --decorations=never'
alias pretty="prettier --config=$HOME/.config/prettierrc --write"
alias docker-cleanup='docker system prune --volumes -f'
alias docker-sage='docker system df -v'
alias brew-deps='brew deps --tree --installed'
alias brew-deps-detailed='brew leaves | xargs brew deps --include-build --tree'
alias gdr='cs ~/Google\ Drive'
alias cv='cs ~/Google\ Drive/frank/resume-cv'
alias docs='cs ~/Documents'

function cs () { cd "$@" && ls }
function o () {
	if [ $# -eq 0 ]; then open .;
	else open "$@";
	fi;
}
function ctx () { history | rg "$1" -C "$2" }
function tsrun () {
  tsc $1.ts --lib esnext,dom && node $1.js
  rm $1.js
}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# opam configuration
test -r /Users/frankkair/.opam/opam-init/init.zsh && . /Users/frankkair/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
