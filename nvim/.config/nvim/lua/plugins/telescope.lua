return {
  'nvim-telescope/telescope.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
    }
  },
  opts = function()
    return {
      -- telescope does not have an easy `theme = ivy` options yet. so we hack it like this.
      -- see https://github.com/nvim-telescope/telescope.nvim/issues/848
      defaults = vim.tbl_deep_extend(
        "force",
        require('telescope.themes').get_ivy(), -- or get_cursor, get_ivy
        {
          -- your own `default` options go here, e.g.:
          preview = false,
          mappings = {
            i = {
              -- Map which_key to <C-h> (default: <C-/>)
              -- ["<C-h>"] = "which_key",
              ["<C-j>"] = "move_selection_next",
              ["<C-k>"] = "move_selection_previous",
            },
          },
        }
      ),
      extensions = {
        -- You dont need to set any of these options. These are the default ones. Only
        -- the loading is important
        fzf = {
          fuzzy = true,                   -- false will only do exact matching
          override_generic_sorter = true, -- override the generic sorter
          override_file_sorter = true,    -- override the file sorter
          case_mode = "smart_case",       -- or "ignore_case" or "respect_case"
          -- the default case_mode is "smart_case"
        },
      },
    }
  end,
  config = function(_, opts)
    require("telescope").setup(opts)
    require("telescope").load_extension("fzf")
  end,
}
