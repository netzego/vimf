-- https://github.com/jose-elias-alvarez/null-ls.nvim
-- https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md
local null_ls = require("null-ls")
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
null_ls.setup({
  sources = {
    -- Lua
    -- https://github.com/sumneko/lua-language-server/commit/0f63b39275be9c5c3eb3bca27f5bd660cdc0ae26
    -- null_ls.builtins.formatting.stylua.with({
    --   condition = function(utils)
    --     return utils.root_has_file({ "stylua.toml", ".stylua.toml" })
    --   end,
    -- }),
    -- clang
    -- null_ls.builtins.formatting.clang_format,
    -- Rust
    null_ls.builtins.formatting.rustfmt,
    -- Spelling
    -- null_ls.builtins.completion.spell,
    -- PYTHON
    -- null_ls.builtins.formatting.black.with({
    --   extra_args = { "--preview", "--target-version", "py310" },
    -- }),
    -- null_ls.builtins.formatting.isort,
    null_ls.builtins.diagnostics.ruff,
    null_ls.builtins.formatting.ruff,
    -- null_ls.builtins.diagnostics.pyproject_flake8,
    -- null_ls.builtins.diagnostics.eslint,
    -- Html
    null_ls.builtins.formatting.prettierd.with({
      filetypes = { "html", "json", "javascript", "typescript", "css", "scss" },
    }),
    -- Djangohtml and alikes, only supports indentation
    -- null_ls.builtins.formatting.djhtml.with({
    --   filetypes = { "htmldjango" },
    --   extra_args = { "-t", "2" },
    -- }),
    -- HTML
    null_ls.builtins.diagnostics.djlint,
    null_ls.builtins.formatting.djhtml.with({
      extra_args = { "--tabwidth", "2" },
    }),
    -- TOML
    -- https://taplo.tamasfe.dev/cli/#features
    null_ls.builtins.formatting.taplo,
    -- SCSS
    -- null_ls.builtins.diagnostics.stylelint, -- sucks
    -- null_ls.builtins.formatting.stylelint,
    -- SH, BASH
    null_ls.builtins.formatting.shfmt,
    null_ls.builtins.diagnostics.shellcheck,
    -- null_ls.builtins.code_actions.shellcheck,
    -- ANSIBLE
    null_ls.builtins.diagnostics.ansiblelint,
    -- YAML
    null_ls.builtins.formatting.yamlfmt,
    null_ls.builtins.diagnostics.yamllint,
  },
  -- https://github.com/jose-elias-alvarez/null-ls.nvim#how-do-i-format-files-on-save
  -- you can reuse a shared lspconfig on_attach callback here
  on_attach = function(client, bufnr)
    if client.supports_method("textDocument/formatting") then
      vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
          vim.lsp.buf.format({ bufnr = bufnr })
        end,
      })
    end
  end,
})
