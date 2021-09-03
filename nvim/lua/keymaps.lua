local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true }

-- exit
keymap('n', '<c-q>', ':NvimTreeClose<cr>:bufdo bd<cr>:q<cr>', opts)

-- format
keymap('n', '<c-f>', ':Format<cr>', opts)

-- telescope
keymap('n', '<leader>ff', [[<cmd>lua require('telescope.builtin').find_files()<cr>]], opts)
keymap('n', '<leader>fg', [[<cmd>lua require('telescope.builtin').live_grep()<cr>]], opts)
keymap('n', '<leader>fb', [[<cmd>lua require('telescope.builtin').buffers()<cr>]], opts)
keymap('n', '<leader>fh', [[<cmd>lua require('telescope.builtin').help_tags()<cr>]], opts)

-- neogit
keymap('n', '<leader>gs', [[<cmd>lua require('neogit').open()<cr>]], opts)

-- vim-tree
keymap('n', '<leader>e', ':NvimTreeToggle<cr>', opts)
keymap('n', '<leader>r', ':NvimTreeRefresh<cr>', opts)
keymap('n', '<leader>n', ':NvimTreeFindFile<cr>', opts)
