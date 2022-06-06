# Run RSpec inside of Docker
dspec () {
  if [ $# -eq 0 ]; then
    docker-compose build && docker-compose run web bundle exec rspec spec
  else
    docker-compose build && docker-compose run web bundle exec rspec "$1"
  fi
}

ruby_versions () {
  echo "ruby --version  --> $(ruby --version)"
  echo "rbenv global    --> $(rbenv global)"
  echo "rbenv local     --> $(rbenv local)"
  printf "rbenv versions  --> %s", "$(rbenv versions)"
}

eval "$(rbenv init -)"
