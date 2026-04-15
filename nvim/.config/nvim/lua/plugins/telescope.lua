-- https://github.com/nvim-telescope/telescope.nvim
-- https://github.com/nvim-telescope/telescope-fzf-native.nvim
-- https://github.com/nvim-telescope/telescope.nvim/blob/master/lua/telescope/themes.lua
return {
  "nvim-telescope/telescope.nvim",
  version = "*",
  dependencies = {
    "nvim-lua/plenary.nvim",
    -- recommended
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make", },
  },
  opts = {
    defaults = {
      preview = false,
      sorting_strategy = "ascending",
      selection_strategy = "reset",
      layout_strategy = "bottom_pane",
      layout_config = {
        prompt_position = "top",
        height = 20,
      },
      border = true,
      borderchars = {
        -- top prompt
        prompt = { "─", " ", " ", " ", "─", "─", " ", " ", },
        results = { " ", },
        -- bottom prompt
        -- prompt = { " ", " ", "─", " ", " ", " ", "─", "─", },
        -- results = { "─", " ", " ", " ", "─", "─", " ", " ", },
      },
      mappings = {
        i = {
          ["<esc>"] = require("telescope.actions").close,
          ["<C-j>"] = require("telescope.actions").move_selection_next,
          ["<C-k>"] = require("telescope.actions").move_selection_previous,
        },
        -- n = {},
      },
    },
  },
}
