-- c.lua
vim.bo.expandtab = true
vim.bo.shiftwidth = 4
vim.bo.softtabstop = 4
vim.bo.tabstop = 4

vim.cmd([[
	augroup AutoformatC
		autocmd BufWritePre *.c :lua vim.lsp.buf.formatting_sync()
	augroup END
]])

-- local map = vim.api.nvim_set_keymap
-- local opts = { noremap = true, silent = true }
--
-- map("n", "<leader>m", ":!python %<CR>", opts)
-- map("n", "<leader>i", ":terminal python -i %<CR>i", opts)
