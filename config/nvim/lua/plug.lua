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
Plug('numToStr/Comment.nvim')
Plug('nvim-lualine/lualine.nvim')
Plug('akinsho/bufferline.nvim')
Plug('folke/tokyonight.nvim', { branch = 'main' })

vim.call('plug#end')
