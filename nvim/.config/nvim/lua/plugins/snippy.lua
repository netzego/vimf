-- https://github.com/dcampos/nvim-snippy
-- https://github.com/honza/vim-snippets
return {
  "dcampos/nvim-snippy",
  dependencies = {
    "honza/vim-snippets",
  },
  -- lazy = false,
  opts = {
    snippet_dirs = "~/.local/share/nvim/lazy/vim-snippets/snippets,~/.config/nvim/snippets",
    hl_group = "Comment",
    mappings = {
      is = {
        ["<c-l>"] = "expand_or_advance",
        ["<c-j>"] = "next",
        ["<c-k>"] = "previous",
      },
    },
  },
}
