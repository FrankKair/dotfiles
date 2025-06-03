export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="af-magic"
plugins=(git)
source $ZSH/oh-my-zsh.sh

source <(fzf --zsh)
export FZF_DEFAULT_COMMAND="rg --files --follow --no-ignore-vcs --hidden -g '!{**/.git/*}'"
alias cat='bat --decorations=never'
alias zrc='nvim ~/.zshrc'
alias docs='cd ~/Documents'
alias gcane='git commit --amend --no-edit && git push --force'
alias gbc='git branch | cat'
alias gb='git checkout $(git branch | fzf)'
gshow() {
  while true; do
    commit=$(git log --oneline --color=always | \
      fzf --ansi --multi \
          --preview 'git show --color=always {1}' \
          --delimiter=" " --with-nth=1.. \
          --bind "enter:accept" | awk '{print $1}')
    [[ -z "$commit" ]] && break
    git show "$commit"
  done
}
docker-prune() { docker system df; docker image prune; docker system prune --volumes; }

o () {
  if [ $# -eq 0 ]; then open .;
  else open "$@";
  fi;
}

upgrade-packages () {
  brew update
  brew upgrade
  CASKS=( $(brew list --cask) )
  for cask in "${CASKS[@]}"; do
    brew uninstall --cask --force "$cask" && brew reinstall --cask "$cask" && brew info "$cask"
  done
}

setupstreambranch () {
  BRANCH=$(git branch --show-current)
  echo "origin/$BRANCH"
  eval "git branch --set-upstream-to=origin/$BRANCH $BRANCH"
}

ghpr () {
  local branch=$(git branch --show-current)
  local remote_url=$(git config --get remote.origin.url)
  github_url=$(echo $remote_url | sed 's/git@github.com://' | sed 's/\.git$//')
  open "https://github.com/$github_url/pull/new/$branch"
}

gbdel () {
  local current_branch=$(git branch --show-current)
  local primary_branch="master"
  if git show-ref --verify --quiet refs/heads/main; then
    primary_branch="main"
  fi
  git branch | grep -v "^\*" | grep -v "$primary_branch" | xargs git branch -D
}

klog () {
  FOLLOW=""
  if [[ "$1" == "-f" ]]; then
    FOLLOW="--follow"
  fi
  POD=$(kubectl get pods | fzf | awk '{print $1}')
  [ -n "$POD" ] && kubectl logs $FOLLOW "$POD"
}

kenv() {
  POD=$(kubectl get pods | fzf | awk '{print $1}')
  CONTAINER=$(kubectl get pod "$POD" -o jsonpath='{.spec.containers[*].name}' | tr ' ' '\n' | fzf)
  kubectl exec "$POD" -c "$CONTAINER" -- env | fzf
}

ksecret () {
  SECRET=$(kubectl get secrets | fzf | awk '{print $1}')
  kubectl get secret "$SECRET" -o jsonpath="{.data.$SECRET}" | base64 -d
}

krestart () {
  NAME=$(kubectl get deploy -o custom-columns=NAME:.metadata.name --no-headers | fzf)
  [ -n "$NAME" ] && kubectl rollout restart deployment/"$NAME"
}
