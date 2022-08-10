vim.cmd [[
  let g:fzf_layout = { 'window': { 'width': 1, 'height': 0.8, 'relative': v:true } }
  command! -bang -nargs=* Rg
    \ call fzf#vim#grep(
    \   'rg --column --line-number --no-heading --color=always '.shellescape(<q-args>), 1,
    \   <bang>0 ? fzf#vim#with_preview('up:60%')
    \           : fzf#vim#with_preview('right:50%:hidden', '?'),
    \   <bang>0)

  " Files with fzf
  noremap <Leader>f :Files<CR>
  noremap <Leader>g :Rg<Space><CR>
]]
