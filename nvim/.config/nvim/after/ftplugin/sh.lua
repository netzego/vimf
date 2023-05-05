-- sh.lua
vim.bo.expandtab = true
vim.bo.shiftwidth = 4
vim.bo.softtabstop = 4
vim.bo.tabstop = 4

local bats_opts = "--verbose-run --show-output-of-passing-tests"

vim.keymap.set("n", "<space>m", "<cmd>!bash %<cr>", { silent = true, buffer = true })
vim.keymap.set("n", "<space>M", "<cmd>terminal bash ./%<cr>i", { silent = true, buffer = true })
vim.keymap.set("n", "<space>t", "<cmd>!bats " .. bats_opts .. " %<cr>", { silent = true, buffer = true })
vim.keymap.set("n", "<space>s", "<cmd>!shellcheck %<cr>", { silent = true, buffer = true })
