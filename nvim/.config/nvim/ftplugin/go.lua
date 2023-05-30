-- go.lua
vim.bo.expandtab = true
vim.bo.shiftwidth = 4
vim.bo.softtabstop = 4
vim.bo.tabstop = 4

vim.keymap.set("n", "<space>m", "<cmd>!go run %<cr>", { silent = true, buffer = true })
vim.keymap.set("n", "<space>M", "<cmd>terminal go run %<cr>i", { silent = true, buffer = true })
-- vim.keymap.set("n", "<space>j", "<cmd>!luajit %<cr>", { silent = true, buffer = true })
-- vim.keymap.set("n", "<space>J", "<cmd>terminal luajit -i %<cr>i", { silent = true, buffer = true })
