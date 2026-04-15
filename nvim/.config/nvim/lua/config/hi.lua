-- :help :hightlight :hi
--
-- Suggested color names (these are available on most systems):
--     Red		LightRed	DarkRed
--     Green	LightGreen	DarkGreen	SeaGreen
--     Blue	LightBlue	DarkBlue	SlateBlue
--     Cyan	LightCyan	DarkCyan
--     Magenta	LightMagenta	DarkMagenta
--     Yellow	LightYellow	Brown		DarkYellow
--     Gray	LightGray	DarkGray
--     Black	White
--     Orange	Purple		Violet
--
-- Colors which define Nvim's default color scheme:
--     NvimDarkBlue    NvimLightBlue
--     NvimDarkCyan    NvimLightCyan
--     NvimDarkGray1   NvimLightGray1
--     NvimDarkGray2   NvimLightGray2
--     NvimDarkGray3   NvimLightGray3
--     NvimDarkGray4   NvimLightGray4
--     NvimDarkGreen   NvimLightGreen
--     NvimDarkMagenta NvimLightMagenta
--     NvimDarkRed     NvimLightRed
--     NvimDarkYellow  NvimLightYellow

-- tweaks default colorscheme
vim.cmd([[
  hi Normal guibg=None
  hi StatusLine guifg=NvimDarkGrey2 guibg=#e7e7e7
  hi StatusLineNC guibg=#e7e7e7
  hi TelescopeSelection guibg=#e7e7e7
  hi CursorLine guibg=#e7e7e7
  hi CursorLineNC guibg=#e7e7e7
  hi Folded guifg=NvimLightGrey3 guibg=None gui=italic
  hi CurSearch guifg=NvimDarkGray2 guibg=LightYellow
  hi Visual guifg=NvimDarkGray2 guibg=LightYellow
  hi FloatBoarder guifg=NvimDarkGrey2 guibg=#e7e7e7
  "hi FloatBoarder
  "hi FloatFooter
]])
