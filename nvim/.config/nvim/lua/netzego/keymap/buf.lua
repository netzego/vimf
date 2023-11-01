-- lua/netzego/keymap/buf.lua

local opts = { noremap = true, silent = true }

vim.keymap.set("n", "<A-w>", "<cmd>bdelete<CR>", opts)
vim.keymap.set("n", "<A-W>", "<cmd>bdelete!<CR>", opts)

vim.keymap.set({ "n", "i", "v" }, "<A-[>", "<cmd>bprev<cr>", opts)
vim.keymap.set({ "n", "i", "v" }, "<A-]>", "<cmd>bnext<cr>", opts)

vim.keymap.set({ "n", "i", "v" }, "<A-h>", "<cmd>bprev<cr>", opts)
vim.keymap.set({ "n", "i", "v" }, "<A-l>", "<cmd>bnext<cr>", opts)
