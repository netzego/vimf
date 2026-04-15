-- https://github.com/folke/lazy.nvim
-- https://lazy.folke.io/configuration
require("lazy").setup({
  defaults = {
    -- try to fetch latest stable (semver)
    -- version = "*",
    version = nil,
  },
  spec = {
    { import = "plugins", },
  },
  -- install = { colorscheme = { "default", }, },
  checker = { enabled = false, },
  ui = {
    size = { width = 1, height = 1, },
  },
  change_detection = {
    enabled = true,
    notify = false,
  },
})
