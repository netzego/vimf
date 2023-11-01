-- lua/plugins/cmp.lua
-- https://github.com/hrsh7th/nvim-cmp

return {
  "hrsh7th/nvim-cmp",
  event = "InsertEnter",
  lazy = true,
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-nvim-lua",
    "dcampos/cmp-snippy",
    "honza/vim-snippets",
  },
  opts = function()
    local cmp = require("cmp")
    return {
      completion = {
        autocomplete = false,
      },
      snippet = {
        expand = function(args)
          require('snippy').expand_snippet(args.body)
        end,
      },
      sources = {
        { name = "nvim_lsp" },
        { name = "nvim_lua" },
        { name = "snippy" },
      },
      mapping = {
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<C-j>"] = cmp.mapping.select_next_item(),
        ["<C-k>"] = cmp.mapping.select_prev_item(),
        -- Accept currently selected item.
        -- Set `select` to `false` to only confirm explicitly selected items.
        ["<CR>"] = cmp.mapping.confirm({
          behavior = cmp.ConfirmBehavior.Replace,
          select = true,
        })
      },
    }
  end,
}
