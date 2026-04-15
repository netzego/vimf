-- after/ftplugin/lua.lua
local map          = vim.keymap.set
local opts         = { silent = true, buffer = true, }
local tw           = 4
vim.bo.shiftwidth  = tw
vim.bo.softtabstop = tw
vim.bo.tabstop     = tw
vim.bo.expandtab   = true

map("n", "<space>m", "<cmd>!lua %<cr>", opts)
map("n", "<space>M", "<cmd>terminal lua -i %<cr>i", opts)
map("n", "<space>j", "<cmd>!luajit %<cr>", opts)
map("n", "<space>J", "<cmd>terminal luajit -i %<cr>i", opts)

-- lsp
vim.lsp.enable("lua_ls")

-- autoformat (lsp)
vim.api.nvim_create_autocmd({ "BufWritePre", }, {
  pattern = { "*.lua", },
  callback = function()
    vim.lsp.buf.format({ async = false, })
  end,
})
