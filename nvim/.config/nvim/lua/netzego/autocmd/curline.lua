-- lua/netzego/aucmd.lua

vim.api.nvim_create_augroup("NoCursorLineInInsertMode", { clear = true })

vim.api.nvim_create_autocmd({ "InsertEnter" }, {
  group = "NoCursorLineInInsertMode",
  callback = function(_)
    vim.opt.cursorline = false
  end,
})

vim.api.nvim_create_autocmd({ "InsertLeave" }, {
  group = "NoCursorLineInInsertMode",
  callback = function(_)
    vim.opt.cursorline = true
  end,
})
