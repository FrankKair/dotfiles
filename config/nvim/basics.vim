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

" Search results centered
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz

" Buffers
let mapleader = "\<Space>"
nnoremap <Leader><Leader> <c-^>
nnoremap <Leader>; :Buffers<CR>

" Terminal
map <Leader>tt :vnew term://zsh<CR>

" Splits
nnoremap vs :vs<CR>
nnoremap sp :sp<CR>
noremap <silent> <M-Left> :vertical resize +3<CR>
noremap <silent> <M-Right> :vertical resize -3<CR>
noremap <silent> <M-Up> :resize +3<CR>
noremap <silent> <M-Down> :resize -3<CR>
map <Leader>th <C-w>t<C-w>H
map <Leader>tk <C-w>t<C-w>K

" Tabs
nnoremap tn :tabnew<CR>
nnoremap { :tabprev<CR>
nnoremap } :tabnext<CR>
nnoremap to :tabo<CR>

