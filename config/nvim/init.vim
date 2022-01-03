set number
set relativenumber
syntax on
"set termguicolors
color default
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set guicursor=
set mouse=a
set splitbelow splitright
set clipboard=unnamed

" Don't know if useful... ???
" set lazyredraw

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
" Search results centered
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz

" Buffers
let mapleader = "\<Space>"
nnoremap <leader><leader> <c-^>
nnoremap <leader>; :Buffers<CR>

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

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'neovim/nvim-lspconfig'
Plug 'preservim/nerdtree'
Plug 'airblade/vim-rooter'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'dense-analysis/ale'
call plug#end()

" Search with ripgrep
noremap <leader>f :Rg<Space>
let g:fzf_layout = { 'window': { 'width': 1, 'height': 0.8, 'relative': v:true } }
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

" Files with fzf
noremap <leader>p :Files<CR>

" NERDTree
map <C-n> :NERDTreeToggle<CR>

" Opens NERDTree automatically with no files specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Closes vim if NERDTree is the only window left open
autocmd bufenter * if (winnr("$") ==1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

