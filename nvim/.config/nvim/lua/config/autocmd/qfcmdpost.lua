-- lua/netzego/qfcmdpost.lua
-- NOTE: this should probably life in after/plugins/c.lua

vim.api.nvim_create_augroup("ExecAfterMake", { clear = true, })

-- vim.api.nvim_create_autocmd({ "QuickfixCmdPre", }, {
--   group = "ExecAfterMake",
--   pattern = { "*.c", },
--   callback = function(_)
--     local fn = vim.api.nvim_buf_get_name(0)
--     if io.open(fn) ~= nil then
--       vim.cmd([[!rm -f ./%:r]])
--     end
--   end,
-- })

vim.api.nvim_create_autocmd({ "QuickfixCmdPost", }, {
  group = "ExecAfterMake",
  -- pattern = { "*.c", },
  callback = function(_)
    local fn = vim.api.nvim_buf_get_name(0)
    local exec = fn:match("^.+/(.+)%..+$")
    if io.open(exec) ~= nil then
      vim.cmd([[!exec ./%:r]])
    end
  end,
})
