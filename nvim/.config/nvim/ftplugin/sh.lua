-- ftplugin/sh.lua

local tw           = 4
local keymap_opts  = { silent = true, buffer = true, }

vim.bo.shiftwidth  = tw
vim.bo.softtabstop = tw
vim.bo.tabstop     = tw
vim.bo.expandtab   = true
vim.bo.keywordprg  = ":Man" -- FIXME

vim.api.nvim_create_autocmd({ "BufWritePre", }, {
  pattern = { "*.sh", "*.bash", "*.bats", },
  callback = function(_)
    vim.lsp.buf.format({ async = false, })
  end,
})

vim.keymap.set("n", "<leader>m", "<cmd>!bash %<cr>", keymap_opts)
vim.keymap.set("n", "<leader>t", "<cmd>!bats %<cr>", keymap_opts)
vim.keymap.set("n", "<leader>c", "<cmd>!shellcheck %<cr>", keymap_opts)
