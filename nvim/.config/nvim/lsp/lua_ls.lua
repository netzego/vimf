-- https://github.com/LuaLS/lua-language-server
return {
  -- cmd and args
  cmd = { "lua-language-server", },
  filetypes = { "lua", },
  root_markers = { { ".luarc.json", ".luarc.jsonc", }, ".git", },
  -- https://raw.githubusercontent.com/LuaLS/vscode-lua/master/setting/schema.json
  settings = {
    Lua = {
      runtime = {
        version = "LuaJIT",
      },
      -- dont complain
      diagnostics = {
        globals = { "vim", --[[ "luv", --]] },
      },
      -- dont call the cops
      telemetry = {
        enable = false,
      },
    },
  },
}
