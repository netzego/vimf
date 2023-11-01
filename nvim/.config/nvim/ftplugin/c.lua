-- ftplugin/c.lua

local tw           = 4
local keymap_opts  = { silent = true, buffer = true, }

vim.bo.shiftwidth  = tw
vim.bo.softtabstop = tw
vim.bo.tabstop     = tw
vim.bo.expandtab   = true
vim.bo.keywordprg  = ":Man"

vim.api.nvim_create_autocmd({ "BufWritePre", }, {
  pattern = { "*.c", },
  callback = function(_)
    vim.lsp.buf.format({ async = false, })
  end,
})

vim.keymap.set("n", "<space>m", "<cmd>!make %< && ./%< <cr>", keymap_opts)
