# af-magic replica
setopt PROMPT_SUBST

_git_info() {
  local branch
  branch=$(git symbolic-ref --short HEAD 2>/dev/null) || return
  local dirty=""
  [[ -n $(git status --porcelain 2>/dev/null) ]] && dirty="%F{214}*%f"
  echo " %F{75}(%F{78}${branch}${dirty}%F{75})%f"
}

PS1='%F{237}${l:COLUMNS::-:}%f
%F{32}%~$(_git_info) %F{105}%(!.#.»)%f '
PS2='%F{red}\ %f'
RPS1='%(?..%F{red}%? ↵%f) %F{237}%n@%m%f'
