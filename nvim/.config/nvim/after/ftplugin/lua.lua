-- lua.lua
vim.bo.expandtab = true
vim.bo.shiftwidth = 2
vim.bo.softtabstop = 2
vim.bo.tabstop = 2

vim.cmd([[
	augroup AutoformatLua
		autocmd BufWritePre *.lua :lua vim.lsp.buf.formatting_sync()
	augroup END
]])
