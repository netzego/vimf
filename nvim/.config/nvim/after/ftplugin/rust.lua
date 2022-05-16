-- rust.lua
vim.bo.expandtab = true
vim.bo.shiftwidth = 4
vim.bo.softtabstop = 4
vim.bo.tabstop = 4

vim.keymap.set("n", "<space>m", "<cmd>!cargo run %<cr>", { silent = true, buffer = true })
-- vim.keymap.set("n", "<space>M", "<cmd>TERMINAL<cr>i", { silent = true, buffer = true })
-- vim.keymap.set("n", "<space>t", "<cmd>TEST %<cr>", { silent = true, buffer = true })
-- vim.keymap.set("n", "<space>T", "<cmd>TEST VERBOSE %<cr>", { silent = true, buffer = true })
