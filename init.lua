-- Lua config for neovim. Coming from Vim lanuage? See
-- https://neovim.io/doc/user/lua.html for the basics.

-- leader must be set before plugins are set up.
vim.cmd("let mapleader=' '") -- Re-map leader from default \ to , (comma)
vim.cmd("let maplocalleader = '\\'") -- Local leader becomes \.

-- This allows nvim-tree to be used when opening a directory in nvim.
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.cmd("set termguicolors") -- use full color in colorschemes

-- Ensure you still have unnamedplus enabled so yanking works as expected
vim.o.clipboard = 'unnamedplus'   

require("config.lazy")
require("config.options")
require("config.keymaps")
require("config.autocmds")

-- vim: nowrap
