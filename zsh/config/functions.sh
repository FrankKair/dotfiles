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
  if [[ $# -eq 0 ]]; then
    echo "Usage: heic2jpg file1.HEIC [file2.HEIC ...]"
    return 1
  fi

  local input output

  for input in "$@"; do
    output="${input%.*}.jpg"

    if [[ ! -f "$input" ]]; then
      echo "File not found: $input"
      continue
    fi

    if [[ -e "$output" ]]; then
      echo "Output already exists: $output"
      continue
    fi

    sips -s format jpeg \
         -s formatOptions 92 \
         "$input" \
         --out "$output"
  done
}
