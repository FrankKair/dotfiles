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

heic2jpg() {
  if [[ $# -ne 1 ]]; then
    echo "Usage: heic2jpg file.HEIC"
    return 1
  fi

  local input="$1"
  local output="${input%.*}.jpg"

  if [[ ! -f "$input" ]]; then
    echo "File not found: $input"
    return 1
  fi

  if [[ -e "$output" ]]; then
    echo "Output already exists: $output"
    return 1
  fi

  sips -s format jpeg \
       -s formatOptions 92 \
       "$input" \
       --out "$output"
}
