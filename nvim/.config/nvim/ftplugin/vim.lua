-- ftplugin/vim.lua

local tw           = 4
local keymap_opts  = { silent = true, buffer = true, }

vim.bo.shiftwidth  = tw
vim.bo.softtabstop = tw
vim.bo.tabstop     = tw
vim.bo.expandtab   = true

-- if no <file> is specified, :source uses the current buffer
-- also works for lua filtypes or .lua
vim.keymap.set("n", "<space>m", "<cmd>source<cr>", keymap_opts)
