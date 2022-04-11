alias gcane='git commit --amend --no-edit && git push --force'
alias gbc='git branch | cat'
alias gprune="git branch --merged master | grep -v '^[ *]*master$' | xargs git branch -d"

setupstreambranch () {
  # BRANCH=`git branch | cat | grep -i '*' | cut -c 3-`
  BRANCH=$(git branch --show-current)
  echo "origin/$BRANCH"
  eval "git branch --set-upstream-to=origin/$BRANCH $BRANCH"
}
