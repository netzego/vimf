-- man.lua
vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
  desc = "maximize the manpage window",
  command = "wincmd o"
})
