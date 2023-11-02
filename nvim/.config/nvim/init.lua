-- init.lua

-- set leader before lazy plugin
-- this is must/should be done before loading lazy keymaps
vim.api.nvim_set_keymap("n", ";", "<nop>", {})
-- vim.api.nvim_set_keymap("n", "\\", "<nop>", {})
vim.g.mapleader = ";"
vim.g.maplocalleader = ";"

require("netzego/lazy")
require("netzego/opts")
require("netzego/keys")
require("netzego/keymap/clipboard")
require("netzego/keymap/buf")
require("netzego/autocmd/curline")
require("netzego/usercmd/listchars")
require("netzego/usercmd/spell")
require("netzego/usercmd/virttext")
