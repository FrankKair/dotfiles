local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
-- local term_opts = { silent = true }

-- Leader key
map('', '<Space>', '<Nop>', opts)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Window navigation
map('n', '<c-j>', '<c-w>j', opts)
map('n', '<c-k>', '<c-w>k', opts)
map('n', '<c-h>', '<c-w>h', opts)
map('n', '<c-l>', '<c-w>l', opts)

-- Buffers
map('n', '<Leader><Leader>', '<c-^>', opts)
map('n', '<Leader>w', ':bp <BAR> bd # <CR>', opts)

-- Terminal
map('n', '<Leader>tt', ':vnew term://zsh<CR>', opts)

-- Splits
map('n', 'vs', ':vs<CR>', opts)
map('n', 'sp', ':sp<CR>', opts)

map('n', '<M-Left>', ':vertical resize +3<CR>', opts)
map('n', '<M-Right>', ':vertical resize -3<CR>', opts)
map('n', '<M-Up>', ':resize +3<CR>', opts)
map('n', '<M-Down>', ':resize -3<CR>', opts)

map('n', '<Leader>th', '<C-w>t<C-w>H', opts)
map('n', '<Leader>tk', '<C-w>t<C-w>K', opts)

-- Print file path && copy file path to clipboard
map('n', '<Leader>p', ":echo expand('%')<CR>", opts)
map('n', '<Leader>pp', ":call system('pbcopy', expand('%'))<CR>", opts)

-- Tabs
map('n', 'tn', ':tabnew<CR>', opts)
--map('n', '{', ':tabprev<CR>', opts)
--map('n', '}',  ':tabnext<CR>', opts)
--map('n', 'to', ':tabo<CR>', opts)
