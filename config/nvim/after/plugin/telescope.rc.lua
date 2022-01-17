local map = vim.api.nvim_set_keymap
local opts = { noremap = true }

map('n', '<Leader>p', '<cmd>Telescope find_files<CR>', opts)
map('n', '<Leader>;', '<cmd>Telescope buffers<CR>', opts)
map('n', '<Leader>g', '<cmd>Telescope live_grep<CR>', opts)
map('n', '<Leader>h', '<cmd>Telescope help_tags<CR>', opts)
