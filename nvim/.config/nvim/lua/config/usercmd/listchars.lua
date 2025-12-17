-- lua/netzego/usercmd/listchar.lua

-- Toggle list chars
vim.api.nvim_create_user_command("ToggleListChars", function()
  if vim.o.list ~= true then
    vim.o.list = true
  else
    vim.o.list = false
  end
end, {})

-- Toggle list chars
local o = { silent = true, remap = true }
vim.keymap.set({ "n" }, "<f3>", ":ToggleListChars<CR>", o)
