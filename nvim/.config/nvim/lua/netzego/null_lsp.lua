-- https://github.com/jose-elias-alvarez/null-ls.nvim
-- https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md
local null_ls = require("null-ls")
null_ls.setup({
  sources = {
    -- Lua
    -- https://github.com/sumneko/lua-language-server/commit/0f63b39275be9c5c3eb3bca27f5bd660cdc0ae26
    null_ls.builtins.formatting.stylua.with({
      condition = function(utils)
        return utils.root_has_file({ "stylua.toml", ".stylua.toml" })
      end,
    }),
    -- Spelling
    -- null_ls.builtins.completion.spell,
    -- Python
    null_ls.builtins.formatting.black.with({
      extra_args = { "--fast", "--traget-version", "py310" },
    }),
    -- null_ls.builtins.formatting.isort,
    -- null_ls.builtins.diagnostics.eslint,
    -- Html
    null_ls.builtins.formatting.prettierd.with({
      filetypes = { "html", "json", "markdown", "yaml", "javascript", "typescript" },
    }),
    -- Djangohtml and alikes, only supports indentation
    null_ls.builtins.formatting.djhtml.with({
      filetypes = { "htmldjango" },
      extra_args = { "-t", "2" },
    }),
  },
})
