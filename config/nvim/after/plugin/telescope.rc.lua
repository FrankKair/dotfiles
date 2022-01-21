local map = vim.api.nvim_set_keymap
local opts = { noremap = true }

map('n', '<Leader>f', '<cmd>Telescope find_files<CR>', opts)
map('n', '<Leader>b', '<cmd>Telescope buffers<CR>', opts)
map('n', '<Leader>g', '<cmd>Telescope live_grep<CR>', opts)
map('n', '<Leader>h', '<cmd>Telescope help_tags<CR>', opts)
map('n', '<Leader>gs', '<cmd>Telescope git_status<CR>', opts)
map('n', '<Leader>t', '<cmd>Telescope file_browser<CR>', opts)
