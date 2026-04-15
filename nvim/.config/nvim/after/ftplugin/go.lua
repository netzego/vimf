-- after/ftplugin/go.lua
local tw           = 4
vim.bo.shiftwidth  = tw
vim.bo.softtabstop = tw
vim.bo.tabstop     = tw
vim.bo.expandtab   = true
vim.bo.keywordprg  = ":GoKeywordPrg | only"

-- local map  = vim.keymap.set
-- local opts = { silent = true, buffer = true, }
-- map("n", "<space>m", "<cmd>!lua %<cr>", opts)
-- map("n", "<space>M", "<cmd>terminal lua -i %<cr>i", opts)
-- map("n", "<space>j", "<cmd>!luajit %<cr>", opts)
-- map("n", "<space>J", "<cmd>terminal luajit -i %<cr>i", opts)

-- keyword

-- lsp
vim.lsp.enable("gopls")

-- treesitter syntax hl
vim.treesitter.start()

-- treesitter folding
-- vim.o.foldmethod = "expr"
-- vim.o.foldexpr = "nvim_treesitter#foldexpr()"

-- lsp autoformat
vim.api.nvim_create_autocmd({ "BufWritePre", }, {
  pattern = { "*.go", },
  callback = function()
    vim.lsp.buf.format({ async = false, })
  end,
})
