-- https://github.com/ellisonleao/gruvbox.nvim

local overrides = {
  light0_hard = "#eaf4d7",
  light0      = "#e2f1c7",
  light0_soft = "#d1e5bc",
  light1      = "#c9dbb2",
  light2      = "#9bbea1",
  light3      = "#8eae93",
  light4      = "#789284",
}

return {
  "ellisonleao/gruvbox.nvim",
  lazy = false,    -- make sure we load this during startup if it is your main colorscheme
  priority = 1312, -- make sure to load this before all the other start plugins
  config = function()
    local palette = require("gruvbox").palette
    local opts = {
      undercurl = false,
      underline = false,
      bold = true,
      italic = {
        comments = true,
        emphasis = false,
        folds = true,
        operators = false,
        strings = true,
      },
      strikethrough = false,
      invert_selection = false,
      invert_signs = false,
      invert_tabline = false,
      invert_intend_guides = false,
      inverse = true, -- invert background for search, diffs, statuslines and errors
      contrast = "",  -- can be "hard", "soft" or empty string
      palette_overrides = overrides,
      overrides = {
        QuickFixLine         = { fg = overrides.light2, bg = palette.dark0, bold = false, },
        StatusLine           = { fg = overrides.light2, bg = palette.dark0, bold = false, },
        StatusLineNC         = { fg = overrides.light2, bg = palette.dark3, bold = false, italic = true, },
        GitSignsAdd          = { bg = overrides.light1, },
        GitSignsDelete       = { bg = overrides.light1, },
        GitSignsUntracked    = { bg = overrides.light1, },
        GitSignsChange       = { bg = overrides.light1, },
        GitSignsChangedelete = { bg = overrides.light1, },
        GitSignsTopdelete    = { bg = overrides.light1, },
      },
      dim_inactive = false,
      transparent_mode = false,
    }
    require("gruvbox").setup(opts)

    -- load the colorscheme here
    vim.cmd([[colorscheme gruvbox]])
  end,
}
