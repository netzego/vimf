-- cmp.lua

local cmp = require("cmp")

cmp.setup({
  completion = {
    autocomplete = false,
    -- keyword_length = 3,
  },
  snippet = {
    expand = function(args)
      require("snippy").expand_snippet(args.body)
    end,
  },
  mapping = {
    -- ["<C-b>"] = cmp.mapping(cmp.mapping.scroll_docs(-4), { "i", "c" }),
    -- ["<C-f>"] = cmp.mapping(cmp.mapping.scroll_docs(4), { "i", "c" }),
    ["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
    ["<C-j>"] = cmp.mapping(cmp.mapping.select_next_item(), { "i", "c" }),
    ["<C-k>"] = cmp.mapping(cmp.mapping.select_prev_item(), { "i", "c" }),
    -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
    -- ["<C-y>"] = cmp.config.disable,
    ["<C-e>"] = cmp.mapping({
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
    }),
    ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    -- Only show snippets
    -- ["<C-x>"] = cmp.mapping.complete({
    --   config = {
    --     sources = {
    --       { name = "snippy" },
    --     },
    --   },
    -- }),
  },
  -- Ordering matters. It defines the order in the menu.
  sources = {
    { name = "nvim_lsp" },
    { name = "nvim_lua" },
    { name = "snippy",  max_item_count = 4 },
    -- { name = "buffer", keyword_length = 5 },
  },
  -- experimental = {
  --   ghost_text = false,
  --   native_menu = false,
  -- },
})
