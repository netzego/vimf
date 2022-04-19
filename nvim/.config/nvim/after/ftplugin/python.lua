-- python.lua
vim.bo.expandtab = true
vim.bo.shiftwidth = 4
vim.bo.softtabstop = 4
vim.bo.tabstop = 4

vim.keymap.set("n", "<space>m", "<cmd>!python %<cr>", { silent = true, buffer = true })
vim.keymap.set("n", "<space>M", "<cmd>terminal python -i %<cr>i", { silent = true, buffer = true })
vim.keymap.set("n", "<space>t", "<cmd>!pytest %<cr>", { silent = true, buffer = true })
vim.keymap.set("n", "<space>T", "<cmd>!pytest -s %<cr>", { silent = true, buffer = true })
