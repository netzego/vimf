-- https://github.com/dcampos/nvim-snippy
local snippy = require("snippy")
snippy.setup({
  -- snippet_dirs = "~/.config/nvim/after/snippets",
  hl_group = "Search",
  mappings = {
    is = {
      ["<c-l>"] = "expand_or_advance",
      ["<c-j>"] = "next",
      ["<c-k>"] = "previous",
    },
  },
})
