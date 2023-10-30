-- lua/netzego/plug/cmp.lua
-- https://github.com/hrsh7th/nvim-cmp

local cmp = require("cmp")

cmp.setup({
    -- view = {
    --     -- entries = "native", -- can be "custom", "wildmenu" or "native"
    --     entries = {
    --         name = "wildmenu",
    --         separator = "  |  ",
    --     },
    -- },
    completion = {
        autocomplete = false,
        -- keyword_length = 3,
    },
    snippet = {
        expand = function(args)
            require("luasnip").lsp_expand(args.body)
        end,
    },
    mapping = {
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<C-j>"] = cmp.mapping.select_next_item(),
        ["<C-k>"] = cmp.mapping.select_prev_item(),
        ["<CR>"] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
        }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
        -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
        -- ["<C-y>"] = cmp.config.disable,
        -- ["<C-e>"] = cmp.mapping({
        --     i = cmp.mapping.abort(),
        --     c = cmp.mapping.close(),
        -- }),
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
        { name = "luasnip" },
        -- { name = "nvim_lua" },
    },
    -- window = {},
    -- experimental = {
    --   ghost_text = false,
    --   native_menu = false,
    -- },
})
