-- lua/netzego/keymap/clipboard.lua

-- The `star` register is the `xclip -o -selection primary` (XA_PRIMARY)
-- The `plus` register is the `xclip -o -selection clipboard` (XA_CLIPBOARD)

local opts = { noremap = true, silent = true, }

vim.keymap.set({ "n", "v", }, "<space>p", '"+p', opts)
vim.keymap.set({ "n", "v", }, "<space>P", '"+P', opts)
vim.keymap.set({ "n", "v", }, "<space>y", '"+y', opts)
vim.keymap.set({ "n", "v", }, "<space>Y", '"+y$', opts)
