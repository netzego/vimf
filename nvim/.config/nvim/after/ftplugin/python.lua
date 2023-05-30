-- python.lua
vim.bo.expandtab = true
vim.bo.shiftwidth = 4
vim.bo.softtabstop = 4
vim.bo.tabstop = 4
vim.bo.keywordprg = "/usr/bin/pydoc"

vim.keymap.set("n", "<space>m", "<cmd>!python %<cr>", { silent = true, buffer = true })
vim.keymap.set("n", "<space>M", "<cmd>terminal python -i %<cr>i", { silent = true, buffer = true })
vim.keymap.set("n", "<space>t", "<cmd>!pytest --no-header --doctest-modules -v %<cr>", { silent = true, buffer = true })
vim.keymap.set("n", "<space>T", "<cmd>!pytest --doctest-modules -s %<cr>", { silent = true, buffer = true })
