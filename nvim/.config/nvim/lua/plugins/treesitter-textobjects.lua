-- https://github.com/nvim-treesitter/nvim-treesitter-textobjects
return {
  "nvim-treesitter/nvim-treesitter-textobjects",
  branch = "main",
  config = function()
    vim.keymap.set({ "x", "o", }, "af", function()
      require "nvim-treesitter-textobjects.select".select_textobject("@function.outer", "textobjects")
    end)
    vim.keymap.set({ "x", "o", }, "if", function()
      require "nvim-treesitter-textobjects.select".select_textobject("@function.inner", "textobjects")
    end)
    vim.keymap.set({ "x", "o", }, "ac", function()
      require "nvim-treesitter-textobjects.select".select_textobject("@class.outer", "textobjects")
    end)
    vim.keymap.set({ "x", "o", }, "ic", function()
      require "nvim-treesitter-textobjects.select".select_textobject("@class.inner", "textobjects")
    end)
    -- You can also use captures from other query groups like `locals.scm`
    vim.keymap.set({ "x", "o", }, "as", function()
      require "nvim-treesitter-textobjects.select".select_textobject("@local.scope", "locals")
    end)
  end,
}
