-- https://github.com/hrsh7th/nvim-cmp

return {
  "dcampos/nvim-snippy",
  -- lazy = false,
  -- priority = 1312,
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
