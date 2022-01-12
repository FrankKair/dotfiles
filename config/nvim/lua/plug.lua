-- https://github.com/junegunn/vim-plug/blob/fc2813ef4484c7a5c080021ceaa6d1f70390d920/plug.vim#L264
local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.vim/plugged')

Plug('tpope/vim-fugitive')
Plug('neovim/nvim-lspconfig')
Plug('preservim/nerdtree')
Plug('airblade/vim-rooter')
--Plug('junegunn/fzf', { dir = '~/.fzf', do = './install --all' })
Plug('junegunn/fzf', { dir = '~/.fzf' })
Plug('junegunn/fzf.vim')
Plug('dense-analysis/ale')

Plug('nvim-lua/plenary.nvim')
Plug('nvim-telescope/telescope.nvim')
Plug('kyazdani42/nvim-web-devicons')
Plug('pwntester/octo.nvim')

Plug('nvim-lualine/lualine.nvim')

Plug('folke/tokyonight.nvim', { branch = 'main' })

vim.call('plug#end')

vim.cmd [[
  " Search with ripgrep
  noremap <Leader>f :Rg<Space>
  let g:fzf_layout = { 'window': { 'width': 1, 'height': 0.8, 'relative': v:true } }
  command! -bang -nargs=* Rg
    \ call fzf#vim#grep(
    \   'rg --column --line-number --no-heading --color=always '.shellescape(<q-args>), 1,
    \   <bang>0 ? fzf#vim#with_preview('up:60%')
    \           : fzf#vim#with_preview('right:50%:hidden', '?'),
    \   <bang>0)
  
  " Files with fzf
  noremap <Leader>p :Files<CR>
  
  " NERDTree
  map <C-n> :NERDTreeToggle<CR>
  
  " Opens NERDTree automatically with no files specified
  autocmd StdinReadPre * let s:std_in=1
  autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
  
  " Closes vim if NERDTree is the only window left open
  autocmd bufenter * if (winnr("$") ==1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
]]
