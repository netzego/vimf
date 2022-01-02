local colors = require("gruvbox.colors")
require("lualine").setup({
  options = {
    icons_enabled = false,
    -- https://github.com/nvim-lualine/lualine.nvim/blob/master/lua/lualine/themes/gruvbox_light.lua
    theme = {
      normal = {
        a = { bg = colors.light2.hex, fg = colors.green.hex },
        b = { bg = colors.light2.hex, fg = colors.dark1.hex },
        c = { bg = colors.light2.hex, fg = colors.dark1.hex },
      },
      inactive = {
        a = { bg = colors.light2.hex, fg = colors.dark3.hex, gui = "italic" },
        b = { bg = colors.light2.hex, fg = colors.dark3.hex, gui = "italic" },
        c = { bg = colors.light2.hex, fg = colors.dark3.hex, gui = "italic" },
      },
    },
    component_separators = { left = "", right = "" },
    section_separators = { left = "", right = "" },
    disabled_filetypes = {},
    always_divide_middle = true,
  },
  sections = {
    lualine_a = { "mode" },
    lualine_b = {},
    lualine_c = { "buffers" },
    lualine_x = { "branch" },
    lualine_y = { "progress", "location" },
    lualine_z = {},
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { "filename" },
    lualine_x = { "location" },
    lualine_y = {},
    lualine_z = {},
  },
  tabline = {},
  extensions = {},
})
