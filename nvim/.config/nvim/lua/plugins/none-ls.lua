-- https://github.com/nvimtools/none-ls.nvim
-- https://github.com/nvimtools/none-ls.nvim/blob/main/doc/BUILTIN_CONFIG.md

return {
  "nvimtools/none-ls.nvim",
  opts = function()
    local null_ls = require("null-ls")
    return {
      sources = {
        -- bash
        null_ls.builtins.diagnostics.shellcheck.with({
          extra_filetypes = { "bats", },
        }),
        null_ls.builtins.formatting.shfmt.with({
          extra_filetypes = { "bats", },
        }),
        -- c99
        null_ls.builtins.formatting.clang_format,
      },
    }
  end,
}
