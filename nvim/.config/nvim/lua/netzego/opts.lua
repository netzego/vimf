-- lua/netzego/options.lua

vim.g.netrw_liststyle = 6

-- To ALWAYS use the clipboard for ALL operations
-- (instead of interacting with the '+' and/or '*' registers explicitly)
-- vim.opt.clipboard = "unnamedplus"

-- switching buffers without saving
vim.g.hidden = true

-- Set highlight on search
vim.o.hlsearch = false

-- Make line numbers default
vim.wo.number = true
vim.wo.numberwidth = 4
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
vim.opt.undofile = true

-- Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Decrease update time
--  vim.o.updatetime = 250

--  Foldmethod
vim.opt.foldmethod = "indent"

--  Always show the signcolumn
vim.wo.signcolumn = "yes:1"

--  Don't show mode in cmdline
vim.opt.showmode = false

-- Number of line to keep above and below the cursor
vim.g.scrolloff = 8

-- Number of lines for the command-line
vim.opt.cmdheight = 2

-- Set colorscheme (order is important here)
vim.o.termguicolors = true
vim.o.background = "light"

-- heighlights the cursorline
vim.opt.cursorline = true
vim.opt.cursorlineopt = "both"

-- Set completeopt to have a better completion experience
vim.g.completeopt = "menuone,noselect,noinsert"
vim.g.pumheight = 16
vim.g.pumwidth = 16

--  Foldlevel
vim.opt.foldlevel = 8

--  Modeline
vim.opt.modeline = true

-- listchars
vim.opt.listchars:append({ eol = "↵" })
vim.opt.listchars:append({ tab = " »" })
vim.opt.listchars:append({ trail = "·" })
vim.opt.listchars:append({ space = "·" })
vim.opt.list = false