-- lua/netzego/plug/luansip.lua
-- https://github.com/L3MON4D3/LuaSnip

-- require("luasnip").config.setup({}) -- not used, not sourced
require("luasnip").filetype_extend("all", { "_" })
require("luasnip.loaders.from_snipmate").lazy_load({
    paths = {
        "~/.local/share/nvim/lazy/vim-snippets/snippets",
        "~/.config/nvim/snippets/",
    }
})
