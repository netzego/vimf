local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local settings = {
  ui = {
    pills = false,
    icons = {
      cmd        = "",
      config     = "",
      event      = "",
      ft         = "",
      init       = "",
      import     = "",
      keys       = "",
      lazy       = "",
      loaded     = "",
      not_loaded = "",
      plugin     = "",
      runtime    = "",
      require    = "",
      source     = "",
      start      = "",
      task       = "",
      list       = { "", "", "", "", },
    },
  },
  change_detection = {
    enabled = false, -- automatically check for config file changes and reload the ui
    notify = false,  -- get a notification when changes are found
  },
  performance = {
    cache = {
      enabled = true,
    },
    reset_packpath = true, -- reset the package path to improve startup time
    rtp = {
      reset = true,        -- reset the runtime path to $VIMRUNTIME and your config directory
      ---@type string[]
      paths = {},          -- add any custom paths here that you want to includes in the rtp
      ---@type string[] list any plugins you want to disable here
      disabled_plugins = {
        "tutor",
        "gzip",
        -- "matchit",
        -- "matchparen",
        -- "netrwPlugin",
        "tarPlugin",
        -- "tohtml",
        "zipPlugin",
      },
    },
  },
}

require("lazy").setup("plugins", settings)
