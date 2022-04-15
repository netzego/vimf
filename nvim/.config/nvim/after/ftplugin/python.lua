-- lua.lua
vim.bo.expandtab = true
vim.bo.shiftwidth = 4
vim.bo.softtabstop = 4
vim.bo.tabstop = 4

vim.cmd([[
	augroup AutoformatPython
		autocmd BufWritePre *.py :lua vim.lsp.buf.formatting_sync()
	augroup END
]])

-- local map = vim.api.nvim_set_keymap
-- local opts = { noremap = true, silent = true }
-- map("n", "<leader>m", ":!python %<CR>", opts)
-- map("n", "<leader>i", ":terminal python -i %<CR>i", opts)

vim.keymap.set("n", "<leader>m", "<cmd>!python %<cr>", { silent = true, buffer = true })
vim.keymap.set("n", "<leader>M", "<cmd>terminal python -i %<cr>i", { silent = true, buffer = true })
vim.keymap.set("n", "<leader>t", "<cmd>!pytest %<cr>", { silent = true, buffer = true })
vim.keymap.set("n", "<leader>T", "<cmd>!pytest -s %<cr>", { silent = true, buffer = true })
