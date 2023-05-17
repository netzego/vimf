-- c.lua
vim.bo.expandtab = true
vim.bo.shiftwidth = 4
vim.bo.softtabstop = 4
vim.bo.tabstop = 4

vim.keymap.set("n", "<space>m", "<cmd>!make %< && ./%< <cr>", { silent = true, buffer = true })
