export CLICOLOR=1
export LSCOLORS=Gxfxcxdxbxegedabagacad
alias cat='bat --decorations=never'
alias zrc='nvim ~/.zshrc'
alias docs='cd ~/Documents'
alias l='ls -lah'
alias ll='ls -lh'

alias gst='git status'
alias gss='git status --short'
alias ga='git add'
alias gaa='git add --all'
alias gc='git commit --verbose'
alias gp='git push'
alias gpf='git push --force-with-lease'
alias gd='git diff'
alias gds='git diff --staged'
alias gco='git checkout'
alias gcb='git checkout -b'
alias glog='git log --oneline --decorate --graph'

alias gcane='git commit --amend --no-edit && git push --force-with-lease'
alias gbc='git branch | cat'
alias gb='git checkout $(git branch | fzf)'
