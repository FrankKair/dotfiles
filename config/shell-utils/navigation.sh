# open dir or file
o () {
  if [ $# -eq 0 ]; then open .;
  else open "$@";
  fi;
}

# find & open
fo() {
    local file
    local opener="open"

    if [ -n "$1" ]; then
        opener="$1"
        shift
    fi

    file=$(fzf) && $opener "$file"
}

# Shortcuts
alias zrc='nvim ~/.zshrc'
alias docs='cd ~/Documents'
