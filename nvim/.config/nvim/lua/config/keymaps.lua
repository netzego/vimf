-- lua/config/keymaps.lua

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

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

-- Buffer navigation
map("n", "<A-[>", ":bprev<CR>", opts)
map("n", "<A-]>", ":bnext<CR>", opts)
map("n", "<A-w>", ":bdelete<CR>", opts)

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

-- Fugitive
map("n", "<leader>g", ":G<CR>", opts)

-- Lsp
map("n", "<leader>lf", ":lua vim.lsp.buf.formating_sync()<CR>", opts)
