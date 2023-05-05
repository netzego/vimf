-- lua/config/gruvbox.lua
-- https://github.com/ellisonleao/gruvbox.nvim
require("gruvbox").setup({
  undercurl = true,
  underline = true,
  bold = true,
  italic = {
    strings = true,
    comments = true,
    operators = false,
    folds = true,
  },
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  invert_intend_guides = false,
  inverse = true, -- invert background for search, diffs, statuslines and errors
  contrast = "", -- can be "hard", "soft" or empty string
  palette_overrides = {
    light0_hard = "#eaf4d7",
    light0 = "#e2f1c7",
    light0_soft = "#d1e5bc",
    light1 = "#c9dbb2",
    light2 = "#9bbea1",
    light3 = "#8eae93",
    light4 = "#789284",
  },
  overrides = {},
  dim_inactive = false,
  transparent_mode = false,
})

vim.cmd("colorscheme gruvbox")
