-- My init.lua
-- require('plugins') -- will find and execute plugins.lua file
-- Zeige Zeilennummern
vim.opt.number = true
-- Zeilennummern relativ zum Cursor
vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.cmd("syntax on")
vim.cmd("filetype on")

vim.keymap.set("i", "<C-c>", "<Esc>") 
vim.keymap.set("i", "jj", "<Esc>") 

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- add your plugins here
    -- Rosepine colorscheme
	{ "rose-pine/neovim", name = "rose-pine", lazy = false },

    -- Tokyonight colorscheme
	{
	"folke/tokyonight.nvim",
  	lazy = false,
  	priority = 1000,
  	opts = {},
  	config = function()
      	-- load the colorscheme here
      	end,
	},

	-- Vimtex for LaTeX
	{
  	"lervag/vimtex",
  	lazy = false,     -- we don't want to lazy load VimTeX
  	init = function()
    	-- VimTeX configuration goes here, e.g.
    	vim.g.vimtex_view_method = "zathura"
	vim.g.maplocalleader = ","
  	end
	}

  },

  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "habamax" } },
  -- automatically check for plugin updates
  checker = { enabled = true, notify = false },
})

-- Standardfarbschema setzen
vim.cmd([[colorscheme rose-pine]])

-- Transparenter Hintergrund
vim.api.nvim_set_hl(0, "Normal", {guibg=NONE, ctermbg=NONE})
