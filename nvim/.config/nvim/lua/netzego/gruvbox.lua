-- lua/config/gruvbox.lua
-- https://github.com/ellisonleao/gruvbox.nvim
-- https://github.com/rktjmp/lush.nvim
vim.g.gruvbox_invert_selection = false
vim.g.gruvbox_italic = false
vim.g.gruvbox_italicize_comments = false
vim.g.gruvbox_invert_tabline = false

local hi = function(group, map)
  local cmd = ":hi " .. group
  for k, v in pairs(map) do
    if v ~= nil then
      cmd = cmd .. " " .. k .. "=" .. v
    end
  end
  vim.cmd(cmd)
end

local c = require("gruvbox.colors")

hi("Comment", { gui = "NONE" })
hi("Folded", { guibg = c.bg0, gui = "italic" })
