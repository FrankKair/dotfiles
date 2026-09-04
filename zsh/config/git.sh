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
