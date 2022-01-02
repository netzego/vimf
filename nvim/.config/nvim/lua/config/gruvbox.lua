-- lua/config/gruvbox.lua
-- https://github.com/ellisonleao/gruvbox.nvim
-- https://github.com/rktjmp/lush.nvim
vim.g.gruvbox_invert_selection = false
vim.g.gruvbox_italic = false
vim.g.gruvbox_italicize_comments = false
vim.g.gruvbox_invert_tabline = false
local colors = require("gruvbox.colors")

-- local function hi(group, fg, bg, gui)
--   vim.cmd(table.concat({
--     ":highlight ",
--     group,
--     " guifg=",
--     fg,
--     " guibg=",
--     bg,
--     " gui=",
--     gui,
--   }))
-- end

-- local hi = function(higr, fg, bg, gui)
--   if gui == nil then
--     gui = "NONE"
--   end
--   vim.cmd(":hi " .. group .. " guifg=" .. " guibg=" .. bg .. " gui=" .. gui)
-- end
--
-- local highlight = function(group, fg, bg, gui)
--   local cmd = ":highlight"
--   if fg ~= nil then
--     cmd = cmd .. " guifg=" .. fg
--   end
-- end
--
-- -- {
-- -- "",
-- -- ""
-- -- }
-- local h = function(hld) end

-- hi("LineNr", colors.light2.hex, colors.bg0.hex, "NONE")
-- hi("LineNr", colors.light2.hex, colors.bg0.hex, "NONE")
--
vim.cmd([[:hi Comment gui=NONE]])
vim.cmd([[:hi Folded guibg=white gui=italic]])
