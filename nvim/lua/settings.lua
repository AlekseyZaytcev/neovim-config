-- vim.g - global variables
vim.g.mapleader = ' '
vim.g.ranger_command_override = 'ranger --cmd "set show_hidden=true"'

-- 'default'
-- 'palenight'
-- 'ocean'
-- 'lighter'
-- 'darker'
-- 'default-community'
-- 'palenight-community'
-- 'ocean-community'
-- 'lighter-community'
-- 'darker-community'
vim.g.material_theme_style = 'default'
vim.g.material_terminal_italics = 1

-- vim.o - general settings
vim.o.mouse = 'a'
vim.o.clipboard = "unnamedplus"
vim.o.expandtab = true
vim.o.shiftwidth = 2
vim.o.softtabstop = 2

-- vim.wo - window scoped options
vim.wo.number = true

-- vim.bo - buffer scoped options

-- vim.opt - set global, window and buffer settings
local set = vim.opt

set.termguicolors = true
