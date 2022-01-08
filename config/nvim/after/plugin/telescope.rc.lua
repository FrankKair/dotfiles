local map = vim.api.nvim_set_keymap

map('n', '<Leader>ff', '<cmd>Telescope find_files<CR>', { noremap = true })
map('n', '<Leader>fg', '<cmd>Telescope live_grep<CR>', { noremap = true })
map('n', '<Leader>fb', '<cmd>Telescope buffers<CR>', { noremap = true })
map('n', '<Leader>fh', '<cmd>Telescope help_tags<CR>', { noremap = true })
