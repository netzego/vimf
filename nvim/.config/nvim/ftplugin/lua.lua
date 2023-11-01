-- ftplugin/lua.lua

local tw           = 2
local keymap_opts  = { silent = true, buffer = true }

vim.bo.shiftwidth  = tw
vim.bo.softtabstop = tw
vim.bo.tabstop     = tw
vim.bo.expandtab   = true

vim.api.nvim_create_autocmd({ "BufWritePre" }, {
    pattern = { "*.lua" },
    callback = function(_)
        vim.lsp.buf.format({ async = false })
    end
})

vim.keymap.set("n", "<space>m", "<cmd>!lua %<cr>", keymap_opts)
vim.keymap.set("n", "<space>M", "<cmd>terminal lua -i %<cr>i", keymap_opts)
vim.keymap.set("n", "<space>j", "<cmd>!luajit %<cr>", keymap_opts)
vim.keymap.set("n", "<space>J", "<cmd>terminal luajit -i %<cr>i", keymap_opts)
