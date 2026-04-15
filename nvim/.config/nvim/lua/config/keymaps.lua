-- lua/config/keys.lua
-- help: map.txt
local map = vim.keymap.set
local opts = { noremap = true, silent = true, }

-- buffers
map({ "n", "i", "v", }, "<A-Space>", function()
  local n = tonumber(vim.fn.bufnr("#"))
  if n == -1 then return end
  vim.api.nvim_set_current_buf(n)
end, opts)
map({ "n", "i", "v", }, "<A-h>", "<cmd>bprev<cr>", opts)
map({ "n", "i", "v", }, "<A-l>", "<cmd>bnext<cr>", opts)
map({ "n", "i", "v", }, "<A-[>", "<cmd>bprev<cr>", opts)
map({ "n", "i", "v", }, "<A-]>", "<cmd>bnext<cr>", opts)
map({ "n", "i", "v", }, "<A-q>", "<cmd>bdelete<CR>", opts)
map({ "n", "i", "v", }, "<A-Q>", "<cmd>bdelete!<CR>", opts)

-- windows
map({ "n", }, "<leader><w><c>", "<cmd>close<CR>", opts)
map({ "n", }, "<leader><w><o>", "<cmd>only<CR>", opts)

-- line swapping
map("n", "<A-j>", ":m .+1<CR>==", opts)
map("n", "<A-k>", ":m .-2<CR>==", opts)
map("i", "<A-j>", "<ESC>:m .+1<CR>==gi", opts)
map("i", "<A-k>", "<ESC>:m .-2<CR>==gi", opts)
map("v", "<A-j>", ":m'>+<CR>`<my`>mzgv`yo`z", opts)
map("v", "<A-k>", ":m'<-2<CR>`>my`<mzgv`yo`z", opts)

-- telescope
map("n", "<leader>e", ":Telescope find_files hidden=true<CR>", opts)
map("n", "<leader>d", ":Telescope diagnostics<CR>", opts)
-- map("n", "<leader>b", ":Telescope buffers<CR>", opts)
-- map("n", "<leader>r", ":Telescope registers<CR>", opts)
-- map("n", "<leader>te", ":Telescope symbols<CR>", opts)
-- map("n", "<leader>tg", ":lua require'telescope.builtin'.symbols{ sources = {'gitmoji'} }", opts)

-- undotree
map("n", "<leader>u", ":UndotreeToggle | UndotreeFocus<CR>", opts)
-- Fugitive
-- map("n", "<space>g", ":G<CR>", opts)
-- vim.keymap.set("n", "<space>g", "<cmd>G<cr>", opts)
