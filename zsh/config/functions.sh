o() {
  if [ $# -eq 0 ]; then open .; else open "$@"; fi
}

docker-prune() {
  docker system df
  docker image prune
  docker system prune --volumes
}

packages-upgrade() {
  brew update
  brew upgrade
  CASKS=( $(brew list --cask) )
  for cask in "${CASKS[@]}"; do
    brew uninstall --cask --force "$cask" && brew reinstall --cask "$cask" && brew info "$cask"
  done
}
