vim.cmd [[
  set number
  set relativenumber
  syntax on
  "set termguicolors
  "color default
  filetype plugin indent on
  set tabstop=2
  set shiftwidth=2
  set softtabstop=2
  set expandtab
  set guicursor=
  set mouse=a
  set splitbelow splitright
  set clipboard=unnamed
  set scrolloff=5

  " Display matching files + tab complete
  set wildmenu
  set wildignore=*~,*.png,*.jpg,*.gif,dist/*,*.settings,*.min.js,*.swp,publish/*,*.o
  
  " Permanent undo
  set undodir=~/.vimdid
  set undofile
  
  "
  command! W :w
  
  " Navigating display lines
  noremap j gj
  noremap k gk
  
  " Search
  set hlsearch
  set incsearch
  set ignorecase
  set smartcase
  nnoremap <CR> :nohlsearch<cr>
  
  " Search results centered
  nnoremap <silent> n nzz
  nnoremap <silent> N Nzz
  nnoremap <silent> * *zz
  nnoremap <silent> # #zz
  nnoremap <silent> g* g*zz
]]
