require('neogit').setup({})
require('gitsigns').setup()

vim.cmd([[
syntax enable
colorscheme night-owl
let g:lightline = { 'colorscheme': 'nightowl' }

set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

au TextYankPost * lua vim.highlight.on_yank {higroup="IncSearch", timeout=150, on_visual=true}
]])
