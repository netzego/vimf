-- https://go.dev/gopls/
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#gopls
return {
  cmd = { "gopls", },
  filetypes = { "go", "gomod", "gowork", "gotmpl", },
  root_markers = { "go.mod", ".git", },
}
