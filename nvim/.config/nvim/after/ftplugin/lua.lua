-- lua.lua
vim.bo.expandtab = true
vim.bo.shiftwidth = 2
vim.bo.softtabstop = 2
vim.bo.tabstop = 2

vim.keymap.set("n", "<space>m", "<cmd>!lua %<cr>", { silent = true, buffer = true })
vim.keymap.set("n", "<space>M", "<cmd>terminal lua -i %<cr>i", { silent = true, buffer = true })
vim.keymap.set("n", "<space>j", "<cmd>!luajit %<cr>", { silent = true, buffer = true })
vim.keymap.set("n", "<space>J", "<cmd>terminal luajit -i %<cr>i", { silent = true, buffer = true })
