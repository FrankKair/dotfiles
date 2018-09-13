set number
color default
filetype plugin indent on
set tabstop=2
set expandtab
set cursorline
syntax on

"
command! W :w

" Navigating display lines
noremap j gj
noremap k gk

" Window navigation
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Search
set hlsearch
set incsearch
set ignorecase
set smartcase
nnoremap <CR> :nohlsearch<cr>
