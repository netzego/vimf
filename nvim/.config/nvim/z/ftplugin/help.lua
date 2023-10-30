-- help.lua
vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
  desc = "maximize the vim help window",
  command = "wincmd o"
})
