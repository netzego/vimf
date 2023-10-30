-- scss.lua
vim.bo.expandtab = true
vim.bo.shiftwidth = 2
vim.bo.softtabstop = 2
vim.bo.tabstop = 2

vim.keymap.set("n", "<space>m", "<cmd>!sassc -t expanded %<cr>", { silent = true, buffer = true })
