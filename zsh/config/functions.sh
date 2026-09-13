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
  brew upgrade --cask
}
