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
alias gbc='git branch | cat'
alias gprune="git branch --merged master | grep -v '^[ *]*master$' | xargs git branch -d"
alias tree='exa --tree'
alias ls='exa'
alias cat='bat --decorations=never'
alias pretty="prettier --config=$HOME/.config/prettierrc --write"
alias docker-cleanup='docker system prune --volumes -f'
alias docker-sage='docker system df -v'
alias brew-deps='brew deps --tree --installed'
alias brew-deps-detailed='brew leaves | xargs brew deps --include-build --tree'
alias docs='cs ~/Documents'
alias charge="system_profiler SPPowerDataType | grep "State of Charge" | awk '{print $5}'"
alias weather='curl http://wttr.in/London'

function cs () { cd "$@" && ls }

function o () {
	if [ $# -eq 0 ]; then open .;
	else open "$@";
	fi;
}

function tzs () {
  BAY=`env TZ=US/Pacific date`
  LONDON=`env TZ=Europe/London date`
  SEOUL=`env TZ=Asia/Seoul date`
  echo "SAN FRANCISCO => $BAY"
  echo "LONDON        => $LONDON"
  echo "SEOUL         => $SEOUL"
}

function ctx () { history | rg "$1" -C "$2" }


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# opam configuration
test -r /Users/frankkair/.opam/opam-init/init.zsh && . /Users/frankkair/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
