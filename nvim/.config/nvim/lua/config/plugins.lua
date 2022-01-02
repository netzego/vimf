-- $XDG_CONFIG_HOME/.nvim/lua/plugins.lua
-- https://github.com/wbthomason/packer.nvim#bootstrapping

local install_path = vim.fn.stdpath("data")
  .. "/site/pack/packer/start/packer.nvim"

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = vim.fn.system({
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  })
end

vim.cmd([[
  augroup Packer
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

require("packer").startup(function()
  local use = require("packer").use
  -- colorscheme
  -- use("morhetz/gruvbox")
  use({ "ellisonleao/gruvbox.nvim", requires = { "rktjmp/lush.nvim" } })

  -- comments
  use({
    "numToStr/Comment.nvim",
    config = function()
      require("Comment").setup()
    end,
  })

  -- common use plugins
  use("nvim-lua/plenary.nvim")

  -- Lsp
  use("neovim/nvim-lspconfig")
  use("jose-elias-alvarez/null-ls.nvim")

  -- Treesitter
  use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
  use("nvim-treesitter/nvim-treesitter-textobjects")

  -- Telescope
  use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
  use({
    "nvim-telescope/telescope.nvim",
    requires = { "nvim-lua/plenary.nvim" },
  })

  -- Statusline
  use("nvim-lualine/lualine.nvim")

  -- Git
  use("tpope/vim-fugitive")
  use({ "lewis6991/gitsigns.nvim", requires = { "nvim-lua/plenary.nvim" } })

  -- use "wbthomason/packer.nvim" -- Package manager
  --  use "tpope/vim-rhubarb" -- Fugitive-companion to interact with github
  --  use "tpope/vim-commentary" -- "gc" to comment visual regions/lines
  --  use "ludovicchabant/vim-gutentags" -- Automatic tags management
  --  -- UI to select things (files, grep results, open buffers...)
  --  use { "nvim-telescope/telescope.nvim", requires = { "nvim-lua/plenary.nvim" } }
  --  use "joshdick/onedark.vim" -- Theme inspired by Atom
  --  use "itchyny/lightline.vim" -- Fancier statusline
  --  -- Add indentation guides even on blank lines
  --  use "lukas-reineke/indent-blankline.nvim"
  --  -- Add git related info in the signs columns and popups
  --  -- Highlight, edit, and navigate code using a fast incremental parsing library

  --  use "hrsh7th/nvim-cmp" -- Autocompletion plugin
  --  use "hrsh7th/cmp-nvim-lsp"
  --  use "saadparwaiz1/cmp_luasnip"
  --  use "L3MON4D3/LuaSnip" -- Snippets plugin

  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
