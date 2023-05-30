-- htmldjango.lua
vim.bo.expandtab = true
vim.bo.shiftwidth = 2
vim.bo.softtabstop = 0
vim.bo.tabstop = 2

vim.cmd([[
	augroup AutoformatHtmlDjango
		autocmd BufWritePre *.html :lua vim.lsp.buf.formatting_sync()
	augroup END
]])
