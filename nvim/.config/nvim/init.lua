-- init.lua

-- set leader before lazy plugin
-- this is must be done before loading lazy keymaps
vim.api.nvim_set_keymap("n", ";", "<nop>", {})
vim.g.mapleader = ";"
vim.g.maplocalleader = ";"

-- loads all the jazz
require("netzego/lazy")
require("netzego/plugins")
require("netzego/plug/gruvbox")
require("netzego/plug/neodev")  -- should be loaded before lsp stuff??
require("netzego/plug/luasnip") -- should be loaded before cmp??
require("netzego/plug/cmp")
require("netzego/plug/lsp")
require("netzego/options") -- last but not least
require("netzego/keymaps") -- last but not least
