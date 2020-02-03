set number
set relativenumber
syntax on
color default
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set cursorline

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

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
call plug#end()

" NERDTree
map <C-n> :NERDTreeToggle<CR>

" Opens NERDTree automatically with no files specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Closes vim if NERDTree is the only window left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
