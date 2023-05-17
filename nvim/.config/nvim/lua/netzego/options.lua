-- lua/netzego/options.lua

-- To ALWAYS use the clipboard for ALL operations (instead of interacting with
-- the '+' and/or '*' registers explicitly): >
-- vim.opt.clipboard = "unnamedplus"

-- Switching buffers without saving
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

-- Enable mouse mode
vim.o.mouse = "a"

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

--  Heighlights the cursorline
vim.opt.cursorline = true

--  Set completeopt to have a better completion experience
vim.o.completeopt = "menuone,noselect"
vim.opt.pumheight = 16
vim.opt.pumwidth = 16

--  Foldlevel
vim.opt.foldlevel = 3

--  Modeline
vim.opt.modeline = true

-- listchars
vim.opt.listchars:append({ eol = "↵" })
vim.opt.listchars:append({ tab = "»»" })
vim.opt.listchars:append({ trail = "·" })
vim.opt.listchars:append({ space = "·" })
vim.opt.list = false

--  Disable statusline in insert mode
vim.cmd([[
  augroup NoCursorlineInInsertMode
    au!
    au InsertEnter * :lua vim.opt.cursorline = false
    au InsertLeave * :lua vim.opt.cursorline = true
  augroup END
]])
