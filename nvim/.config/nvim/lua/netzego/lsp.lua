-- lua/netzego/lsp.lua

local servers = { "pyright", "rust_analyzer", "tsserver", "clangd" }
for _, lsp in pairs(servers) do
  require("lspconfig")[lsp].setup({})
end

-- sumneko language server
local runtime_path = vim.split(package.path, ";")
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

require("lspconfig").lua_ls.setup({
  -- capabilities = capabilities,
  -- on_attach = on_attach,
  -- Disable autoformat
  -- on_attach = function(client, buf)
  --   on_attach(client, buf)
  --   client.server_capabilities.document_formatting = false
  --   client.server_capabilities.document_range_formatting = false
  -- end,
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = "LuaJIT",
        -- Setup your lua path
        -- path = runtime_path,
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = { "vim" },
      },
      -- workspace = {
      --   -- Make the server aware of Neovim runtime files
      --   library = vim.api.nvim_get_runtime_file("", true),
      --   checkThirdParty = false, -- https://github.com/neovim/nvim-lspconfig/issues/1700
      -- },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
})
