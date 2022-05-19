alias gcane='git commit --amend --no-edit && git push --force'
alias gb='git checkout $(git branch | fzf)'
alias gbc='git branch | cat'
alias gprune="git branch --merged master | grep -v '^[ *]*master$' | xargs git branch -d"

gshow () {
  if [ $# -eq 0 ]; then
    COMMIT_HASH=$(git log --oneline | fzf --multi --preview 'git show {+1}' | awk '{print $1}')
    eval "git show $COMMIT_HASH"
  else
    eval "git show $1"
  fi
}

prdiff () {
  PULL_REQUEST=$(gh pr list | fzf | awk '{print $1}')
  eval "gh pr diff $PULL_REQUEST"
}

setupstreambranch () {
  # BRANCH=`git branch | cat | grep -i '*' | cut -c 3-`
  BRANCH=$(git branch --show-current)
  echo "origin/$BRANCH"
  eval "git branch --set-upstream-to=origin/$BRANCH $BRANCH"
}
