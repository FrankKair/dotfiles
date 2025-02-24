export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="af-magic"
plugins=(git)
source $ZSH/oh-my-zsh.sh

source <(fzf --zsh)
export FZF_DEFAULT_COMMAND="rg --files --follow --no-ignore-vcs --hidden -g '!{**/.git/*}'"
alias ip='ifconfig | grep "inet " | grep -Fv 127.0.0.1 | cut -f 2 -d " "'
alias cat='bat --decorations=never'
alias zrc='nvim ~/.zshrc'
alias docs='cd ~/Documents'
alias gcane='git commit --amend --no-edit && git push --force'
alias gb='git checkout $(git branch | fzf)'
gshow() {
  git show "$(git log --oneline | fzf --multi --preview 'git show {+1}' | awk '{print $1}')"
}

o () {
  if [ $# -eq 0 ]; then open .;
  else open "$@";
  fi;
}

fo() {
  local file
  local opener="open"
  if [ -n "$1" ]; then
    opener="$1"
    shift
  fi
  file=$(fzf) && $opener "$file"
}

upgrade-packages () {
  brew update
  brew upgrade
  CASKS=( $(brew list --cask) )
  for cask in "${CASKS[@]}"; do
    brew uninstall --cask --force "$cask" && brew reinstall --cask "$cask" && brew info "$cask"
  done
}

# shortcuts
alias zrc='nvim ~/.zshrc'
alias docs='cd ~/Documents'

# github
prdiff () {
  PULL_REQUEST=$(gh pr list | fzf | awk '{print $1}')
  eval "gh pr diff $PULL_REQUEST"
}

issueview () {
  ISSUE=$(gh issue list | fzf | awk '{print $1}')
  eval "gh issue view --comments $ISSUE"
}

setupstreambranch () {
  # BRANCH=`git branch | cat | grep -i '*' | cut -c 3-`
  BRANCH=$(git branch --show-current)
  echo "origin/$BRANCH"
  eval "git branch --set-upstream-to=origin/$BRANCH $BRANCH"
}
