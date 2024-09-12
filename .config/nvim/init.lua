-- My init.lua
--
-- Load lazy.nvim plugin manager
-- Zeige Zeilennummern
vim.opt.number = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
-- Zeilennummern relativ zum Cursor
vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.opt.autochdir = true
vim.cmd("syntax on")
vim.cmd("filetype on")

vim.keymap.set("i", "<C-c>", "<Esc>") 
vim.keymap.set("i", "jj", "<Esc>") 

-- Strg + s zum speichern
vim.keymap.set("i", "<C-s>","<CMD>write<CR>") 
vim.keymap.set("n", "<C-s>","<CMD>write<CR>") 

vim.g.mapleader = " "
vim.g.maplocalleader = ","
require("lz")

vim.cmd[[
" Exxpand or jump in insert mode
imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' 

" Jump forward through tabstops in visual mode
smap <silent><expr> <Tab> luasnip#jumpable(1) ? '<Plug>luasnip-jump-next' : '<Tab>'

" Cycle forward through choice nodes with Control-f (for example)
imap <silent><expr> <C-f> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-f>'
smap <silent><expr> <C-f> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-f>'
]]

