-- lua/netzego/keys.lua

-- help: map.txt

-- nvim_set_keymap({mode}, {lhs}, {rhs}, {*opts})
--
-- • {mode}  	Mode short-name (map command prefix: "n", "i", "v", "x", …) or
-- 		"!" for |:map!|, or empty string for |:map|. "ia", "ca" or
-- 		"!a" for abbreviation in Insert mode, Cmdline mode, or both,
-- 		respectively
-- • {lhs}	Left-hand-side |{lhs}| of the mapping.
-- • {rhs}	Right-hand-side |{rhs}| of the mapping.
-- • {opts}	Optional parameters map: Accepts all |:map-arguments| as keys
-- 		except |<buffer>|, values are booleans (default false). Also:
-- 		• "noremap" disables |recursive_mapping|, like |:noremap|
-- 		• "desc" human-readable description.
-- 		• "callback" Lua function called in place of {rhs}.
-- 		• "replace_keycodes" (boolean) When "expr" is true, replace
--   		keycodes in the resulting string (see
--   		|nvim_replace_termcodes()|). Returning nil from the Lua
--   		"callback" is equivalent to returning an empty string.

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- greates remap ever
-- https://vim.fandom.com/wiki/Replace_a_word_with_yanked_text
-- xnoremap <space>p "_dP

map("x", "p", 'p:let @"=@0<CR>', opts)

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
vim.keymap.set("n", "<space>g", "<cmd>G<cr>", opts)

-- Lsp
-- map("n", "<space>lf", ":lua vim.lsp.buf.formating_sync()<CR>", opts)
