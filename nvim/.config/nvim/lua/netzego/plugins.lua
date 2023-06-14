-- lua/netzego/plugins.lua
-- https://github.com/wbthomason/packer.nvim#bootstrapping

vim.cmd([[packadd packer.nvim]])

require("packer").startup(function(use)
  -- packer itself
  use("wbthomason/packer.nvim")

  -- Helpers
  use("nvim-lua/plenary.nvim")

  -- Colorscheme
  use({ "ellisonleao/gruvbox.nvim" })

  -- Comments
  use({ "numToStr/Comment.nvim" })

  -- Lsp
  use("neovim/nvim-lspconfig")
  use("jose-elias-alvarez/null-ls.nvim")

  -- Treesitter
  use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
  use({ "nvim-treesitter/nvim-treesitter-textobjects" })

  -- Telescope
  use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
  use({ "nvim-telescope/telescope.nvim" })
  use({ "nvim-telescope/telescope-symbols.nvim" }) -- emojis

  -- Statusline
  use("nvim-lualine/lualine.nvim")

  -- Git
  use("tpope/vim-fugitive")
  use({
    "lewis6991/gitsigns.nvim",
    requires = { "nvim-lua/plenary.nvim" }
  })

  -- Snippets
  use("dcampos/nvim-snippy")
  use("honza/vim-snippets")

  -- Autocompletion
  use("hrsh7th/nvim-cmp")
  use("hrsh7th/cmp-nvim-lsp")
  use("hrsh7th/cmp-nvim-lua")
  -- use("hrsh7th/cmp-buffer")
  use("dcampos/cmp-snippy")
  -- use("hrsh7th/cmp-path")
  -- use("hrsh7th/cmp-cmdline")

  -- surrounds
  -- https://github.com/kylechui/nvim-surround
  use({
    "kylechui/nvim-surround",
    -- tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end,
  })

  -- emmet
  use("mattn/emmet-vim")

  -- diagon
  use("willchao612/vim-diagon")
end)
