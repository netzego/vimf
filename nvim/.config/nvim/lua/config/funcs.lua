-- lua/config/funcs.lua
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "briefly highlight yanked text",
  group = vim.api.nvim_create_augroup("kickstart-hightlight-yank", { clear = true, }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
