-- My init.lua
--
-- Load lazy.nvim plugin manager
require("lz")

-- Zeige Zeilennummern
vim.opt.number = true
-- Zeilennummern relativ zum Cursor
vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.opt.autochdir = true
vim.cmd("syntax on")
vim.cmd("filetype on")

vim.keymap.set("i", "<C-c>", "<Esc>") 
vim.keymap.set("i", "jj", "<Esc>") 


