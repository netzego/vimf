-- rust.lua
vim.bo.expandtab = true
vim.bo.shiftwidth = 2
vim.bo.softtabstop = 2
vim.bo.tabstop = 2

vim.keymap.set("n", "<space>m", "<cmd>!dot -Tsvg % > %:t:r.svg<CR>", { silent = true, buffer = true })
-- vim.keymap.set("n", "<space>M", "<cmd>terminal cargo run<cr>i", { silent = true, buffer = true })
-- -- cargo mappings
-- vim.keymap.set("n", "<space>cr", "<cmd>terminal cargo --run<cr>i", { silent = true, buffer = true })
-- vim.keymap.set("n", "<space>ct", "<cmd>terminal cargo test<cr>i", { silent = true, buffer = true })
-- vim.keymap.set("n", "<space>cb", "<cmd>terminal cargo run --bin %:t:r<cr>i", { silent = true, buffer = true })
-- vim.keymap.set("n", "<space>ce", "<cmd>terminal cargo run --example %:t:r<cr>i", { silent = true, buffer = true })
-- vim.keymap.set("n", "<space>t", "<cmd>TEST %<cr>", { silent = true, buffer = true })
-- vim.keymap.set("n", "<space>T", "<cmd>TEST VERBOSE %<cr>", { silent = true, buffer = true })
