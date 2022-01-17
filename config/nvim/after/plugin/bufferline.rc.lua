require('bufferline').setup{}

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '}', ':BufferLineCycleNext<CR>', opts)
map('n', '{', ':BufferLineCyclePrev<CR>', opts)
