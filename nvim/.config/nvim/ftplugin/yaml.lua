-- ftplugin/yaml.lua

local tw           = 2
local keymap_opts  = { silent = true, buffer = true, }

vim.bo.shiftwidth  = tw
vim.bo.softtabstop = tw
vim.bo.tabstop     = tw
vim.bo.expandtab   = true
