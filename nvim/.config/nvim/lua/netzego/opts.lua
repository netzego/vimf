-- lua/netzego/options.lua

local opt = vim.opt -- vim.opt.x = { ... }

-- To ALWAYS use the clipboard for ALL operations
-- (instead of interacting with the '+' and/or '*' registers explicitly)
-- vim.opt.clipboard = "unnamedplus"

-- switching buffers without saving
vim.o.hidden = true

-- Set highlight on search
vim.o.hlsearch = false

-- Make line numbers default
vim.wo.number = true
vim.wo.numberwidth = 5
vim.wo.relativenumber = true

-- Tabulator defaults
vim.bo.expandtab = true
vim.bo.shiftwidth = 4
vim.bo.softtabstop = 4
vim.bo.tabstop = 4

-- disable mouse mode
vim.o.mouse = ""

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true
vim.o.history = 1024
vim.o.cmdwinheight = 16 -- default 7

-- Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Decrease update time
--  vim.o.updatetime = 250

--  Foldmethod
vim.o.foldmethod = "indent"

--  Always show the signcolumn
vim.wo.signcolumn = "yes:2"

--  Don't show mode in cmdline
vim.o.showmode = false

-- Number of line to keep above and below the cursor
vim.o.scrolloff = 2

-- Number of lines for the command-line
vim.o.cmdheight = 2

-- Set colorscheme (order is important here)
vim.o.termguicolors = true
vim.o.background = "light"

-- heighlights the cursorline
vim.o.cursorline = true
vim.o.cursorlineopt = "both"

-- Set completeopt to have a better completion experience
vim.g.completeopt = "menuone,noselect,noinsert"
vim.g.pumheight = 16
vim.g.pumwidth = 16

--  Foldlevel
vim.o.foldlevel = 8

--  Modeline
vim.o.modeline = true

-- listchars
vim.opt.listchars:append({ eol = "↵", })
vim.opt.listchars:append({ tab = " »", })
vim.opt.listchars:append({ trail = "·", })
vim.opt.listchars:append({ space = "·", })
vim.o.list = false
