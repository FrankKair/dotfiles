local map = vim.api.nvim_set_keymap
local opts = { noremap = true }

map('n', '<Leader>ff', '<cmd>Telescope find_files<CR>', opts)
map('n', '<Leader>fg', '<cmd>Telescope live_grep<CR>', opts)
map('n', '<Leader>fb', '<cmd>Telescope buffers<CR>', opts)
map('n', '<Leader>fh', '<cmd>Telescope help_tags<CR>', opts)
