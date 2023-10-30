require("lazy").setup(
    {
        -- gruvbox
        {
            "ellisonleao/gruvbox.nvim",
            lazy = false,    -- make sure we load this during startup if it is your main colorscheme
            priority = 1000, -- make sure to load this before all the other start plugins
            config = function()
                -- load the colorscheme here
                vim.cmd([[colorscheme gruvbox]])
            end,
        },
        -- lsp
        {
            'neovim/nvim-lspconfig',
            dependencies = {
                -- full signature help, docs and completion for the nvim lua api
                'folke/neodev.nvim',
            },
        },
        -- cmp
        {
            "hrsh7th/nvim-cmp",
            -- load cmp on InsertEnter
            -- event = "InsertEnter",
            -- these dependencies will only be loaded when cmp loads
            -- dependencies are always lazy-loaded unless specified otherwise
            dependencies = {
                -- luasnip
                'L3MON4D3/LuaSnip',
                'saadparwaiz1/cmp_luasnip',

                "hrsh7th/cmp-nvim-lsp",
                "hrsh7th/cmp-nvim-lua",
                -- "hrsh7th/cmp-buffer",
                -- "dcampos/cmp-snippy",

                -- Adds a number of user-friendly snippets
                -- 'rafamadriz/friendly-snippets',
                "honza/vim-snippets"
            },
        },
        -- telescope
        {
            'nvim-telescope/telescope.nvim',
            -- tag = '0.1.4',
            dependencies = { 'nvim-lua/plenary.nvim' }
        }
    }, {})
