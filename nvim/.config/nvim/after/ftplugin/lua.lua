-- lua.lua
vim.bo.expandtab = true
vim.bo.shiftwidth = 0
vim.bo.softtabstop = 0
vim.bo.tabstop = 2

vim.cmd([[
	augroup Stylua
		autocmd BufWritePre *.lua :lua vim.lsp.buf.formatting_sync()
	augroup END
]])
