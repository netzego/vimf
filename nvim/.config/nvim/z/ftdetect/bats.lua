-- vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
--   pattern = { "*.bats" },
--   command = "set filetype=bats",
-- })

vim.filetype.add({
  extension = {
    bats = 'bats',
  },
})
