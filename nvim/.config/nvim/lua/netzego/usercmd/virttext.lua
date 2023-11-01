-- Toggle virtual text
vim.api.nvim_create_user_command("ToggleVirtualText", function()
  if vim.diagnostic.config()["virtual_text"] then
    vim.diagnostic.config({ virtual_text = false })
  else
    vim.diagnostic.config({ virtual_text = true })
  end
end, {})

-- Virtual text
vim.keymap.set({ "n" }, "<f7>", ":ToggleVirtualText<CR>", o)
