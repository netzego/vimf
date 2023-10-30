-- lua/netzego/keymaps.lua

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
local o = { silent = true, remap = true }

-- Leader key
map("", ";", "<nop>", opts)
vim.g.mapleader = ";"
vim.g.maplocalleader = ";"

-- -- Overload K mapping to open keywordprg in fullscreen
-- map("n", "K", "<cmd>vim.g.keywordprg expand(cword)<CR>", opts)

-- Clipboard registers
-- The `plus` register is the `xclip -o -selection primary` (XA_PRIMARY)
-- The `star` register is the `xclip -o -selection clipboard` (XA_CLIPBOARD)
map("n", "<space>p", '"+p', opts)
map("v", "<space>p", '"+p', opts)
map("n", "<space>P", '"+P', opts)
map("v", "<space>P", '"+P', opts)
map("n", "<space>y", '"+y', opts)
map("v", "<space>y", '"+y', opts)
map("n", "<space>Y", '"+y$', opts)
map("v", "<space>Y", '"+y$', opts)

-- Greates remap ever
-- https://vim.fandom.com/wiki/Replace_a_word_with_yanked_text
-- xnoremap <space>p "_dP
map("x", "p", 'p:let @"=@0<CR>', opts)

-- Buffer navigation
map("n", "<A-h>", ":bprev<CR>", opts)
map("n", "<A-l>", ":bnext<CR>", opts)
map("n", "<A-w>", ":bdelete<CR>", opts)
map("n", "<A-W>", ":bdelete!<CR>", opts)
vim.keymap.set({ "n", "i", "v" }, "<A-[>", "<cmd>bprev<cr>", o)
vim.keymap.set({ "n", "i", "v" }, "<A-]>", "<cmd>bnext<cr>", o)

-- Line swapping
map("n", "<A-j>", ":m .+1<CR>==", opts)
map("n", "<A-k>", ":m .-2<CR>==", opts)
map("i", "<A-j>", "<ESC>:m .+1<CR>==gi", opts)
map("i", "<A-k>", "<ESC>:m .-2<CR>==gi", opts)
map("v", "<A-j>", ":m'>+<CR>`<my`>mzgv`yo`z", opts)
map("v", "<A-k>", ":m'<-2<CR>`>my`<mzgv`yo`z", opts)

-- Telescope
map("n", "<space>e", ":Telescope find_files<CR>", opts)
map("n", "<space>b", ":Telescope buffers<CR>", opts)
map("n", "<space>r", ":Telescope registers<CR>", opts)
map("n", "<space>d", ":Telescope diagnostics<CR>", opts)
map("n", "<space>te", ":Telescope symbols<CR>", opts)
map("n", "<space>tg", ":lua require'telescope.builtin'.symbols{ sources = {'gitmoji'} }", opts)

-- Fugitive
-- map("n", "<space>g", ":G<CR>", opts)
vim.keymap.set("n", "<space>g", "<cmd>G<cr>", o)

-- Lsp
map("n", "<space>lf", ":lua vim.lsp.buf.formating_sync()<CR>", opts)

-- Spell toggle function
-- TODO Move me to a nice place
vim.api.nvim_create_user_command("ToggleSpell", function()
  if vim.wo.spell then
    vim.wo.spell = false
  else
    vim.wo.spell = true
  end
end, {})

-- Spell
vim.keymap.set({ "n" }, "<f1>", ":ToggleSpell<CR>", o)

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

-- Toggle list chars
vim.api.nvim_create_user_command("ToggleListChars", function()
  if vim.o.list ~= true then
    vim.o.list = true
  else
    vim.o.list = false
  end
end, {})

-- Toggle list chars
vim.keymap.set({ "n" }, "<f3>", ":ToggleListChars<CR>", o)
