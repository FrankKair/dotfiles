set number
syntax on
color default
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set cursorline
" Fuzzy search
set path+=**
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
