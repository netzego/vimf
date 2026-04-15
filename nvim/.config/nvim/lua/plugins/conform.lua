-- https://github.com/stevearc/conform.nvim
return {
  "stevearc/conform.nvim",
  lazy = true,
  opts = {
    formatters_by_ft = {
      sh = { "shfmt", },
    },
  },
}
