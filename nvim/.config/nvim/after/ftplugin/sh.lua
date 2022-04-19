-- sh.lua
vim.bo.expandtab = true
vim.bo.shiftwidth = 4
vim.bo.softtabstop = 4
vim.bo.tabstop = 4

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map("n", "<leader>m", ":!sh %<CR>", opts)
-- map("n", "<leader>i", ":terminal python -i %<CR>i", opts)
