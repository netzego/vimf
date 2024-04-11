-- https://github.com/nvimtools/none-ls.nvim
-- https://github.com/nvimtools/none-ls.nvim/blob/main/doc/BUILTIN_CONFIG.md
-- https://github.com/gbprod/none-ls-shellcheck.nvim

return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "gbprod/none-ls-shellcheck.nvim",
  },
  opts = function()
    local null_ls = require("null-ls")
    return {
      sources = {
        -- shellcheck
        require("none-ls-shellcheck.diagnostics"),
        require("none-ls-shellcheck.code_actions"),
        -- bats
        null_ls.builtins.formatting.shfmt.with({
          extra_filetypes = { "bats", },
        }),
        -- c99
        null_ls.builtins.formatting.clang_format,
      },
    }
  end,
}
