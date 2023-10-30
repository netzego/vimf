require("telescope").setup({
  defaults = {
    preview = false,
    mappings = {
      i = {
        -- Map which_key to <C-h> (default: <C-/>)
        -- ["<C-h>"] = "which_key",
        ["<C-j>"] = "move_selection_next",
        ["<C-k>"] = "move_selection_previous",
      },
    },
  },
  pickers = {
    find_files = {
      theme = "ivy",
    },
    buffers = {
      theme = "ivy",
    },
    registers = {
      theme = "ivy",
    },
    diagnostics = {
      theme = "ivy",
    },
  },
  extensions = {
    -- You dont need to set any of these options. These are the default ones. Only
    -- the loading is important
    fzf = {
      fuzzy = true, -- false will only do exact matching
      override_generic_sorter = true, -- override the generic sorter
      override_file_sorter = true, -- override the file sorter
      case_mode = "smart_case", -- or "ignore_case" or "respect_case"
      -- the default case_mode is "smart_case"
    },
  },
})
-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
require("telescope").load_extension("fzf")
