-- lua/config/pepe.lua
-- https://github.com/ellisonleao/pepe.nvim
-- https://github.com/rktjmp/lush.nvim
vim.g.pepe_invert_selection = false
vim.g.pepe_italic = false
vim.g.pepe_italicize_comments = false
vim.g.pepe_invert_tabline = false

local hi = function(group, map)
  local cmd = ":hi " .. group
  for k, v in pairs(map) do
    if v ~= nil then
      cmd = cmd .. " " .. k .. "=" .. v
    end
  end
  vim.cmd(cmd)
end

local c = require("pepe.colors")

hi("Comment", { gui = "NONE" })
hi("Folded", { guibg = c.bg0, gui = "italic" })
