-- after/ftplugin/sh.lua
local tw           = 4
local map          = vim.keymap.set
local opts         = { silent = true, buffer = true, }

vim.bo.shiftwidth  = tw
vim.bo.softtabstop = tw
vim.bo.tabstop     = tw
vim.bo.expandtab   = true
vim.bo.keywordprg  = ":Man"
vim.bo.makeprg     = "shellcheck -f gcc %"

map({ "n", }, "<leader>c", "<cmd>!shellcheck -f gcc %<cr>", opts)
map({ "n", }, "<leader>m", "<cmd>!bash %<cr>", opts)
map({ "n", }, "<leader>l", "<cmd>!shellcheck -W10 % | grep https<cr>", opts)
-- map("n", "<space>M", "<cmd>terminal lua -i %<cr>i", opts)
-- map("n", "<space>j", "<cmd>!luajit %<cr>", opts)
-- map("n", "<space>J", "<cmd>terminal luajit -i %<cr>i", opts)

-- treesitter syntax hl
-- vim.treesitter.start() -- 2026-04-15 do not work, yet?

-- nvim-lint shellsheck
require("lint")
if vim.fn.executable("shellsheck") then
  vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", }, {
    callback = function()
      require("lint").try_lint("shellcheck")
    end,
  })
end

if vim.fn.executable("shftm") then
  -- configure shfmt (conform)
  require("conform").formatters.shfmt = {
    append_args = { "-i", tw, },
  }
  -- autocmd shfmt (conform)
  vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*.sh",
    callback = function(args)
      require("conform").format({ bufnr = args.buf, })
    end,
  })
end
