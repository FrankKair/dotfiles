vim.cmd [[
  map <C-n> :NERDTreeToggle<CR>
  
  " Opens NERDTree automatically with no files specified
  " autocmd StdinReadPre * let s:std_in=1
  " autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
  
  " Closes vim if NERDTree is the only window left open
  autocmd bufenter * if (winnr("$") ==1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

  let NERDTreeShowHidden=1
  let NERDTreeRespectWildIgnore=1
]]
