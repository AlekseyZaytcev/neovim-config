require('neogit').setup({})
require('gitsigns').setup()

vim.cmd([[
colorscheme material

au TextYankPost * lua vim.highlight.on_yank {higroup="IncSearch", timeout=150, on_visual=true}
]])
