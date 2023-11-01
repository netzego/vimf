-- init.lua

-- set leader before lazy plugin
-- this is must/should be done before loading lazy keymaps
vim.api.nvim_set_keymap("n", ";", "<nop>", {})
vim.api.nvim_set_keymap("n", "\\", "<nop>", {})
vim.g.mapleader = ";"
vim.g.maplocalleader = ";"

require("netzego/lazy")              -- loads all the jazz
require("netzego/opts")              -- last but not least
require("netzego/keys")              -- last but not least

require("netzego/keymap/clipboard")  -- last but not least
require("netzego/keymap/buf")        -- last but not least

require("netzego/autocmd/curline")   -- autocmd
require("netzego/usercmd/listchars") -- toggle
require("netzego/usercmd/spell")     -- autocmd
require("netzego/usercmd/virttext")  -- autocmd
