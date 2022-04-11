alias ip='ifconfig | grep "inet " | grep -Fv 127.0.0.1 | cut -f 2 -d " "'
alias tree='exa --tree'
alias ls='exa'
alias cat='bat --decorations=never'
alias charge="system_profiler SPPowerDataType | grep "State of Charge" | awk '{print $5}'"
alias weather='curl http://wttr.in/London'
alias dtest='docker-compose exec web bundle exec rake spec'

# alias hgi='history | grep -i'
# alias brew-deps='brew deps --tree --installed'
# alias brew-deps-detailed='brew leaves | xargs brew deps --include-build --tree'
# alias docker-cleanup='docker system prune --volumes -f'
# alias docker-sage='docker system df -v'

timezones () {
  BAY=$(env TZ=US/Pacific date)
  LONDON=$(env TZ=Europe/London date)
  SEOUL=$(env TZ=Asia/Seoul date)
  echo "SAN FRANCISCO => $BAY"
  echo "LONDON        => $LONDON"
  echo "SEOUL         => $SEOUL"
}
