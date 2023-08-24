require('bufferline').setup {}

local opts = { noremap = true, silent = true }

vim.keymap.set('n', '}', ':BufferLineCycleNext<CR>', opts)
vim.keymap.set('n', '{', ':BufferLineCyclePrev<CR>', opts)
