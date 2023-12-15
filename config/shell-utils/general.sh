alias ip='ifconfig | grep "inet " | grep -Fv 127.0.0.1 | cut -f 2 -d " "'
alias tree='exa --tree'
alias ls='exa'
alias cat='bat --decorations=never'
alias charge="system_profiler SPPowerDataType | grep "State of Charge" | awk '{print $5}'"
alias weather='curl http://wttr.in/London'

timezones () {
  SAN_FRANCISCO=$(env TZ=US/Pacific date)
  NEW_YORK=$(env TZ=America/New_York date)
  FLORIANOPOLIS=$(env TZ=America/Sao_Paulo date)
  LONDON=$(env TZ=Europe/London date)

  echo "SAN FRANCISCO => $SAN_FRANCISCO"
  echo "NEW YORK CITY => $NEW_YORK"
  echo "FLORIANÓPOLIS => $FLORIANOPOLIS"
  echo "LONDON        => $LONDON"
}
