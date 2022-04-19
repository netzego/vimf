local colors = require("gruvbox.colors")
require("lualine").setup({
  options = {
    icons_enabled = false,
    -- https://github.com/nvim-lualine/lualine.nvim/blob/master/lua/lualine/themes/gruvbox_light.lua
    theme = {
      normal = {
        a = { bg = colors.light2, fg = colors.green },
        b = { bg = colors.light2, fg = colors.dark1 },
        c = { bg = colors.light2, fg = colors.faded_red },
      },
      inactive = {
        a = { bg = colors.light2, fg = colors.dark3, gui = "italic" },
        b = { bg = colors.light2, fg = colors.dark3, gui = "italic" },
        c = { bg = colors.light2, fg = colors.dark3, gui = "italic" },
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
    -- lualine_c = { "buffers" },
    lualine_c = { "filename" },
    lualine_x = {},
    lualine_y = { "branch" },
    lualine_z = { "progress", "location" },
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { "filename" },
    lualine_x = { "location" },
    lualine_y = {},
    lualine_z = {},
  },
  tabline = {
    lualine_a = {},
    lualine_b = { "buffers" },
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {},
  },
  extensions = {},
})
