-- https://github.com/dcampos/nvim-snippy
local snippy = require("snippy")
snippy.setup({
  snippet_dirs = "~/.local/share/nvim/site/pack/packer/start/vim-snippets/snippets,~/.config/nvim/data/snippets",
  hl_group = "Comment",
  mappings = {
    is = {
      ["<c-l>"] = "expand_or_advance",
      ["<c-j>"] = "next",
      ["<c-k>"] = "previous",
    },
  },
})
