vim.wo.number = true

vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function() vim.hl.on_yank() end,
  desc = "Briefly highlight yanked text"
})

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<C-f>', builtin.live_grep, { desc = 'Telescope find' })
vim.keymap.set('n', '<C-s>', builtin.grep_string, { desc = 'Telescope search string' })
