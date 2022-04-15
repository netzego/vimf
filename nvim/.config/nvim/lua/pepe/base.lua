local colors = require("pepe.colors")
local styles = require("pepe.settings").styles
local utils = require("pepe.utils")

-- options (dark mode by default)
local bg0 = colors.dark0
local bg1 = colors.dark1
local bg2 = colors.dark2
local bg3 = colors.dark3
local bg4 = colors.dark4

local fg0 = colors.light0
local fg1 = colors.light1
local fg2 = colors.light2
local fg3 = colors.light3
local fg4 = colors.light4

local red = colors.bright_red
local green = colors.bright_green
local yellow = colors.bright_yellow
local blue = colors.bright_blue
local purple = colors.bright_purple
local aqua = colors.bright_aqua
local orange = colors.bright_orange
local gray = colors.gray

local bg = vim.o.background
if bg == nil then
  bg = "dark"
  vim.o.background = bg
end

-- swap colors if light mode
if bg == "light" then
  bg0 = colors.light0
  bg1 = colors.light1
  bg2 = colors.light2
  bg3 = colors.light3
  bg4 = colors.light4
  fg0 = colors.dark0
  fg1 = colors.dark1
  fg2 = colors.dark2
  fg3 = colors.dark3
  fg4 = colors.dark4
  red = colors.faded_red
  green = colors.faded_green
  yellow = colors.faded_yellow
  blue = colors.faded_blue
  purple = colors.faded_purple
  aqua = colors.faded_aqua
  orange = colors.faded_orange
end

-- handle light/dark contrast settings
local contrast = vim.g["pepe_contrast_" .. bg]
if contrast == "hard" then
  bg0 = colors[bg .. "0_hard"]
elseif contrast == "soft" then
  bg0 = colors[bg .. "0_soft"]
end

-- extending colors table with basic names for easy customization in g:pepe_* options
colors.bg0 = bg0
colors.bg1 = bg1
colors.bg2 = bg2
colors.bg3 = bg3
colors.bg4 = bg4
colors.fg0 = fg0
colors.fg1 = fg1
colors.fg2 = fg2
colors.fg3 = fg3
colors.fg4 = fg4
colors.red = red
colors.green = green
colors.yellow = yellow
colors.blue = blue
colors.purple = purple
colors.aqua = aqua
colors.orange = orange

local hls_cursor = utils.get_color_from_var(vim.g.pepe_hls_cursor, orange, colors)
local hls_highlight = utils.get_color_from_var(vim.g.pepe_hls_highlight, yellow, colors)
local number_column = utils.get_color_from_var(vim.g.pepe_number_column, nil, colors)
local color_column = utils.get_color_from_var(vim.g.pepe_color_column, bg1, colors)
local vert_split = utils.get_color_from_var(vim.g.pepe_vert_split, bg0, colors)
local tabline_sel = utils.get_color_from_var(vim.g.pepe_tabline_sel, green, colors)
local sign_column = utils.get_color_from_var(vim.g.pepe_sign_column, bg1, colors)

local improved_strings_fg = fg1
local improved_strings_bg = bg1
local improved_strings_gui = styles.italic_strings

local special_string_fg = orange
local special_string_bg = bg1
local special_string_gui = styles.italic_strings

if not utils.tobool(vim.g.pepe_improved_strings) then
  improved_strings_fg = green
  improved_strings_bg = nil
  special_string_bg = nil
  special_string_gui = nil
end

-- neovim terminal mode colors
vim.g.terminal_color_0 = bg0
vim.g.terminal_color_8 = gray
vim.g.terminal_color_1 = colors.neutral_red
vim.g.terminal_color_9 = red
vim.g.terminal_color_2 = colors.neutral_green
vim.g.terminal_color_10 = green
vim.g.terminal_color_3 = colors.neutral_yellow
vim.g.terminal_color_11 = yellow
vim.g.terminal_color_4 = colors.neutral_blue
vim.g.terminal_color_12 = blue
vim.g.terminal_color_5 = colors.neutral_purple
vim.g.terminal_color_13 = purple
vim.g.terminal_color_6 = colors.neutral_aqua
vim.g.terminal_color_14 = aqua
vim.g.terminal_color_7 = fg4
vim.g.terminal_color_15 = fg1

vim.g.colors_name = "pepe"

local table_concat = table.concat

local base_group = {
  -- Base groups
  PepeFg0 = { fg = fg0 },
  PepeFg1 = { fg = fg1 },
  PepeFg2 = { fg = fg2 },
  PepeFg3 = { fg = fg3 },
  PepeFg4 = { fg = fg4 },
  PepeGray = { fg = gray },
  PepeBg0 = { fg = bg0 },
  PepeBg1 = { fg = bg1 },
  PepeBg2 = { fg = bg2 },
  PepeBg3 = { fg = bg3 },
  PepeBg4 = { fg = bg4 },

  PepeRed = { fg = red },
  PepeRedBold = { fg = red, gui = styles.bold },
  PepeGreen = { fg = green },
  PepeGreenBold = { fg = green, gui = styles.bold },
  PepeYellow = { fg = yellow },
  PepeYellowBold = { fg = yellow, gui = styles.bold },
  PepeBlue = { fg = blue },
  PepeBlueBold = { fg = blue, gui = styles.bold },
  PepePurple = { fg = purple },
  PepePurpleBold = { fg = purple, gui = styles.bold },
  PepeAqua = { fg = aqua },
  PepeAquaBold = { fg = aqua, gui = styles.bold },
  PepeOrange = { fg = orange },
  PepeOrangeBold = { fg = orange, gui = styles.bold },

  PepeRedSign = { fg = red, bg = sign_column, gui = styles.invert_signs },
  PepeGreenSign = { fg = green, bg = sign_column, gui = styles.invert_signs },
  PepeYellowSign = { fg = yellow, bg = sign_column, gui = styles.invert_signs },
  PepeBlueSign = { fg = blue, bg = sign_column, gui = styles.invert_signs },
  PepePurpleSign = { fg = purple, bg = sign_column, gui = styles.invert_signs },
  PepeAquaSign = { fg = aqua, bg = sign_column, gui = styles.invert_signs },
  PepeOrangeSign = { fg = orange, bg = sign_column, gui = styles.invert_signs },

  PepeRedUnderline = { gui = styles.undercurl, sp = red },
  PepeGreenUnderline = { gui = styles.undercurl, sp = green },
  PepeYellowUnderline = { gui = styles.undercurl, sp = yellow },
  PepeBlueUnderline = { gui = styles.undercurl, sp = blue },
  PepePurpleUnderline = { gui = styles.undercurl, sp = purple },
  PepeAquaUnderline = { gui = styles.undercurl, sp = aqua },
  PepeOrangeUnderline = { gui = styles.undercurl, sp = orange },

  ColorColumn = { bg = color_column },
  Conceal = { fg = blue },
  Cursor = { gui = styles.inverse },
  lCursor = "Cursor",
  iCursor = "Cursor",
  vCursor = "Cursor",
  CursorIM = "Cursor",
  CursorLine = { bg = bg1 },
  CursorColumn = "CursorLine",
  Directory = "PepeGreenBold",
  DiffAdd = { fg = green, bg = bg0, gui = styles.inverse },
  DiffChange = { fg = aqua, bg = bg0, gui = styles.inverse },
  DiffDelete = { fg = red, bg = bg0, gui = styles.inverse },
  DiffText = { fg = yellow, bg = bg0, gui = styles.inverse },
  ErrorMsg = { fg = bg0, bg = red, gui = styles.bold },
  VertSplit = { fg = bg3, bg = vert_split },
  Folded = { fg = gray, bg = bg1, gui = styles.italic },
  FoldColumn = { fg = gray, bg = bg1 },
  SignColumn = { bg = sign_column },
  IncSearch = { fg = hls_cursor, bg = bg0, gui = styles.inverse },
  LineNr = { fg = bg4, bg = number_column },
  CursorLineNr = { fg = yellow, bg = bg1 },
  MatchParen = { bg = bg3, gui = styles.bold },
  ModeMsg = "PepeYellowBold",
  MoreMsg = "PepeYellowBold",
  NonText = "PepeBg2",
  Normal = { fg = fg1, bg = bg0 },
  Pmenu = { fg = fg1, bg = bg2 },
  PmenuSel = { fg = bg2, bg = blue, gui = styles.bold },
  PmenuSbar = { bg = bg2 },
  PmenuThumb = { bg = bg4 },
  Question = "PepeOrangeBold",
  QuickFixLine = { fg = bg0, bg = yellow, gui = styles.bold },
  Search = { fg = hls_highlight, bg = bg0, gui = styles.inverse },
  SpecialKey = "PepeFg4",
  SpellRare = "PepePurpleUnderline",
  SpellBad = "PepeRedUnderline",
  SpellLocal = "PepeAquaUnderline",
  SpellCap = utils.tobool(vim.g.pepe_improved_warnings) and {
    fg = green,
    gui = table_concat({ styles.bold, styles.italic }, ","),
  } or "PepeBlueUnderline",
  StatusLine = { fg = bg2, bg = fg1, gui = styles.inverse },
  StatusLineNC = { fg = bg1, bg = fg4, gui = styles.inverse },
  TabLineFill = { fg = bg4, bg = bg1, gui = styles.invert_tabline },
  TabLine = "TabLineFill",
  TabLineSel = { fg = tabline_sel, bg = bg1, gui = styles.invert_tabline },
  Title = "PepeGreenBold",
  Visual = { bg = bg3, gui = styles.invert_selection },
  VisualNOS = "Visual",
  WarningMsg = "PepeRedBold",
  WildMenu = { fg = blue, bg = bg2, gui = styles.bold },
  Constant = "PepePurple",
  Special = { fg = special_string_fg, bg = special_string_bg, gui = special_string_gui },
  String = {
    fg = improved_strings_fg,
    bg = improved_strings_bg,
    gui = improved_strings_gui,
  },
  Character = "PepePurple",
  Number = "PepePurple",
  Boolean = "PepePurple",
  Float = "PepePurple",
  Identifier = "PepeBlue",
  Function = "PepeGreenBold",
  Statement = "PepeRed",
  Conditional = "PepeRed",
  Repeat = "PepeRed",
  Label = "PepeRed",
  Exception = "PepeRed",
  Keyword = "PepeRed",
  Operator = "PepeFg1",
  PreProc = "PepeAqua",
  Include = "PepeAqua",
  Define = "PepeAqua",
  Macro = "PepeAqua",
  PreCondit = "PepeAqua",
  Type = "PepeYellow",
  StorageClass = "PepeOrange",
  Structure = "PepeAqua",
  Typedef = "PepeYellow",
  SpecialChar = "PepeRed",
  Tag = "PepeAquaBold",
  Delimiter = "PepeFg3",
  Comment = { fg = gray, gui = styles.italic_comments },
  Debug = "PepeRed",
  Underlined = { fg = blue, gui = styles.underline },
  Bold = { gui = styles.bold },
  Italic = { gui = styles.italic },
  Ignore = {},
  Error = { fg = red, gui = table_concat({ styles.bold, styles.inverse }, ",") },
  Todo = { fg = fg0, gui = table_concat({ styles.bold, styles.italic }, ",") },
  diffAdded = "PepeGreen",
  diffRemoved = "PepeRed",
  diffChanged = "PepeAqua",
  diffFile = "PepeOrange",
  diffNewFile = "PepeYellow",
  diffLine = "PepeBlue",
  -- signature
  SignatureMarkText = "PepeBlueSign",
  SignatureMarkerText = "PepePurpleSign",
  -- gitcommit
  gitcommitSelectedFile = "PepeGreen",
  gitcommitDiscardedFile = "PepeRed",
  -- checkhealth
  healthError = { fg = bg0, bg = red },
  healthSuccess = { fg = bg0, bg = green },
  healthWarning = { fg = bg0, bg = yellow },
}

return base_group
