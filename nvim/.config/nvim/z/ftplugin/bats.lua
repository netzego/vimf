-- bats.lua
vim.opt_local.commentstring = "# %s"
vim.opt_local.makeprg = "/usr/bin/bats %"

local efm = "# %f: line %l: %m"
efm = efm .. ",%-G%[%^#]%.%#"                    -- ignore this line /[^#].*/
efm = efm .. ",%A# (in test file %f\\, line %l)" -- match file and line
efm = efm .. ",%Z#   %m"                         -- match err msg
vim.opt_local.errorformat = efm

vim.keymap.set("n", "<space>m", "<cmd>make<cr>", { silent = true, buffer = true })
