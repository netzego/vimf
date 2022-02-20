-- lua/config/keymaps.lua

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
local o = { silent = true, remap = true }

-- Leader key
map("", "<space>", "<nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Clipboard registers
-- The `plus` register is the `xclip -o -selection primary` (XA_PRIMARY)
-- The `star` register is the `xclip -o -selection clipboard` (XA_CLIPBOARD)
map("n", "<leader>p", '"+p', opts)
map("v", "<leader>p", '"+p', opts)
map("n", "<leader>P", '"+P', opts)
map("v", "<leader>P", '"+P', opts)
map("n", "<leader>y", '"+y', opts)
map("v", "<leader>y", '"+y', opts)
map("n", "<leader>Y", '"+y$', opts)
map("v", "<leader>Y", '"+y$', opts)

-- Greates remap ever
-- https://vim.fandom.com/wiki/Replace_a_word_with_yanked_text
-- xnoremap <leader>p "_dP
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
map("n", "<leader>e", ":Telescope find_files<CR>", opts)
map("n", "<leader>b", ":Telescope buffers<CR>", opts)
map("n", "<leader>r", ":Telescope registers<CR>", opts)
map("n", "<leader>d", ":Telescope diagnostics<CR>", opts)

-- Fugitive
-- map("n", "<leader>g", ":G<CR>", opts)
vim.keymap.set("n", "<leader>g", "<cmd>G<cr>", o)

-- Lsp
map("n", "<leader>lf", ":lua vim.lsp.buf.formating_sync()<CR>", opts)
