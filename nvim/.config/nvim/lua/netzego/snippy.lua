-- https://github.com/dcampos/nvim-snippy
local snippy = require("snippy")
snippy.setup({
  snippet_dirs = "~/.config/nvim/data/snippets,~/.local/share/nvim/site/pack/packer/start/vim-snippets/snippets",
  hl_group = "Search",
  mappings = {
    is = {
      ["<c-l>"] = "expand_or_advance",
      ["<c-j>"] = "next",
      ["<c-k>"] = "previous",
    },
  },
})
