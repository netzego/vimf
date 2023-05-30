-- diagnostic.lua

vim.diagnostic.config({
  virtual_text = false,
  -- virtual_text = {
  --   source = 'always',
  --   prefix = '■',
  --   -- Only show virtual text matching the given severity
  --   severity = {
  --     -- Specify a range of severities
  --     min = vim.diagnostic.severity.ERROR,
  --   },
  -- },
  signs = true,
  underline = false,
  update_in_insert = false,
  severity_sort = true,
})
