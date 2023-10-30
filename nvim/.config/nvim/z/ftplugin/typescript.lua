-- javascript.lua
vim.bo.expandtab = true
vim.bo.shiftwidth = 4
vim.bo.softtabstop = 4
vim.bo.tabstop = 4

vim.cmd([[
	augroup AutoformatTypescript
		autocmd BufWritePre *.ts :lua vim.lsp.buf.formatting_sync()
	augroup END
]])
