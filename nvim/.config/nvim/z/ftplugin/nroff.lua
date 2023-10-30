-- nroff.lua
vim.bo.expandtab = true
vim.bo.shiftwidth = 2
vim.bo.softtabstop = 0
vim.bo.tabstop = 2

vim.cmd([[
	augroup AutoRefreshMupdf
		autocmd BufWritePre *.nroff :!pkill --signal HUP mupdf
	augroup END
]])
