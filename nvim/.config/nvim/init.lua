-- init.lua

-- this is must/should be done before loading lazy plugin
vim.api.nvim_set_keymap("n", " ", "<nop>", {})
vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("config/lazy")
require("config/opts")
require("config/keys")
require("config/keymap/clipboard")
require("config/keymap/buf")
require("config/autocmd/curline")
require("config/autocmd/qfcmdpost")
require("config/usercmd/listchars")
require("config/usercmd/spell")
require("config/usercmd/virttext")
-- Set the BASH_ENV environment variable
vim.env.BASH_ENV = os.getenv("HOME") .. ".functions"
