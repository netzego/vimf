-- lua/netzego/usercmd/spell.lua

vim.api.nvim_create_user_command("ToggleSpell", function()
  if vim.wo.spell then
    vim.wo.spell = false
  else
    vim.wo.spell = true
  end
end, {})

-- Spell
vim.keymap.set({ "n" }, "<f1>", ":ToggleSpell<CR>", o)
