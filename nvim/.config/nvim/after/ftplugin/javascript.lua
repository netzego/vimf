-- javascript.lua
vim.bo.expandtab = true
vim.bo.shiftwidth = 4
vim.bo.softtabstop = 4
vim.bo.tabstop = 4

vim.cmd([[
	augroup AutoformatJavascript
		autocmd BufWritePre *.js :lua vim.lsp.buf.formatting_sync()
	augroup END
]])
