# cd + ls
cs () {
  cd "$@" && tree --level=1 
}

# open dir or file
o () {
  if [ $# -eq 0 ]; then open .;
  else open "$@";
  fi;
}

# find & open
fo () {
  local file
  file=$(fzf) && open "$file"
}

# Shortcuts
alias zrc='nvim ~/.zshrc'
alias notes='nvim ~/Documents/notes'
alias docs='cs ~/Documents'
alias dotfiles='cs ~/Documents/dotfiles'
alias fmk='cs ~/Documents/fmk'
