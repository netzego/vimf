-- https://github.com/stevearc/conform.nvim

return {
  "stevearc/conform.nvim",
  event = { "BufWritePre", },
  cmd = { "ConformInfo", },
  keys = {
    {
      -- Customize or remove this keymap to your liking
      "<leader>f",
      function()
        require("conform").format({ async = true, })
      end,
      mode = "",
      desc = "Format buffer",
    },
  },
  -- This will provide type hinting with LuaLS
  ---@module "conform"
  ---@type conform.setupOpts
  opts = {
    -- Define your formatters
    formatters_by_ft = {
      c = { "clang_format", },
      lua = { "stylua", },
      python = { "ruff", },
      sh = { "shfmt", },
      terraform = { "tofu", },
    },
    -- Set default options
    default_format_opts = {
      lsp_format = "fallback",
    },
    -- Set up format-on-save
    format_on_save = { timeout_ms = 500, },
    -- Customize formatters
    formatters = {
      shfmt = {
        prepend_args = { "-i", "2", },
      },
      tofu = {
        command = "tofu",
        args = { "fmt", "-", },
        stdin = true,
      },
      -- shellcheck = {
      --   command = "shellcheck",
      --   args = "$FILENAME --shell=bash --format=diff | patch -p1 $FILENAME",
      --   stdin = false,
      -- },
    },
  },
  init = function()
    -- If you want the formatexpr, here is the place to set it
    vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
  end,
}
