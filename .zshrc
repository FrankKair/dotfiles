autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'l:|=* r:|=*'
export LS_COLORS='di=1;36:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}" 'ma=7'
zstyle ':completion:*:*:*:*:*' menu select
zstyle ':completion:*' select-prompt '%SScrolling: %p%s'
setopt AUTO_CD HIST_IGNORE_DUPS SHARE_HISTORY
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

for f in ~/.config/zsh/*.sh; do source "$f"; done

source <(fzf --zsh)
export FZF_DEFAULT_COMMAND="rg --files --follow --hidden -g '!{**/.git/*}'"
