local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true }

-- exit
keymap('n', '<c-q>', ':bufdo bd<cr>:q<cr>', opts)

-- format
keymap('n', '<c-f>', ':Format<cr>', opts)

-- telescope
keymap('n', '<leader>ff', [[<cmd>lua require('telescope.builtin').find_files()<cr>]], opts)
keymap('n', '<leader>fg', [[<cmd>lua require('telescope.builtin').live_grep()<cr>]], opts)
keymap('n', '<leader>fb', [[<cmd>lua require('telescope.builtin').buffers()<cr>]], opts)
keymap('n', '<leader>fh', [[<cmd>lua require('telescope.builtin').help_tags()<cr>]], opts)

-- neogit
keymap('n', '<leader>gs', [[<cmd>lua require('neogit').open()<cr>]], opts)

-- vim-ranger
keymap('n', '<leader>e', ':RangerCurrentFileNewTab<cr>', opts)
