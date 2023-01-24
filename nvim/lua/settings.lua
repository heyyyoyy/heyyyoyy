local opt = vim.opt
local g = vim.g

g.mapleader = " "
opt.number = true
opt.relativenumber = true
opt.ignorecase = true
opt.smartcase = true
opt.showmatch = true

opt.shiftwidth = 2
opt.tabstop = 2
opt.smartindent = true
opt.splitright = true
opt.splitbelow = true
opt.clipboard = "unnamedplus"
opt.fixeol = false

-- disable netrw at the very start of your init.lua (strongly advised)
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
opt.termguicolors = true
