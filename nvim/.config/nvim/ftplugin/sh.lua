-- sh.lua
vim.bo.textwidth = 76
vim.bo.formatexpr = ""

vim.opt_local.makeprg = "bash %"
vim.opt_local.errorformat = "%f: line %l: %m"

local bats_opts = "--verbose-run --show-output-of-passing-tests"

vim.keymap.set("n", "<space>m", "<cmd>make<cr>", { silent = true, buffer = true })
vim.keymap.set("n", "<space>M", "<cmd>terminal bash ./%<cr>i", { silent = true, buffer = true })
vim.keymap.set("n", "<space>t", "<cmd>!bats " .. bats_opts .. " %<cr>", { silent = true, buffer = true })
vim.keymap.set("n", "<space>s", "<cmd>!shellcheck -a -x %<cr>", { silent = true, buffer = true })
