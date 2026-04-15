-- lua/config/options.lua

-- clipboard
vim.o.clipboard = "unnamedplus"

-- switching buffers without saving
vim.o.hidden = true

-- set highlight on search
vim.o.hlsearch = false

-- make line numbers default
vim.wo.number = true
vim.wo.numberwidth = 5
vim.wo.relativenumber = true

-- always show the signcolumn
vim.wo.signcolumn = "yes:2"

-- tabulator defaults
vim.bo.expandtab = true
vim.bo.shiftwidth = 4
vim.bo.softtabstop = 4
vim.bo.tabstop = 4

-- disable mouse mode
vim.o.mouse = ""

-- enable break indent
vim.o.breakindent = true

-- save undo history
vim.o.undofile = true
vim.o.history = 1024

vim.o.cmdwinheight = 16 -- default 7

-- autocomplete
vim.g.autocomplete = false

-- case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Decrease update time
--  vim.o.updatetime = 250

-- foldmethod
vim.o.foldmethod = "indent"

-- show mode in cmdline
vim.o.showmode = true

-- Number of line to keep above and below the cursor
vim.o.scrolloff = 2

-- Number of lines for the command-line
vim.o.cmdheight = 2

-- Set colorscheme (order is important here)
vim.cmd [[colorscheme default]]
vim.o.termguicolors = true
vim.o.background = "light"

-- heighlights the cursorline
vim.o.cursorline = true
vim.o.cursorlineopt = "both"

-- Set completeopt to have a better completion experience
vim.g.completeopt = "menuone,noselect,noinsert"
vim.g.pumwidth = 32
vim.g.pummaxwidth = 64
vim.g.pumheight = 8
vim.g.pummaxheight = 16

--  Foldlevel
vim.o.foldlevel = 8

--  Modeline
vim.o.modeline = true

-- listchars
-- vim.opt.listchars:append({ eol = "↵", })
vim.opt.listchars:append({ tab = "| ", })
vim.opt.listchars:append({ leadmultispace = "|   ", })
vim.opt.listchars:append({ trail = "·", })
vim.opt.listchars:append({ space = "·", })
vim.o.list = false

-- disable virtual_text
vim.diagnostic.config({ virtual_text = false, })
