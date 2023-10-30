local fn = vim.fn
local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

-- local DetectGoTemplate = augroup("hugo-nvim-DetectGoTemplate", { clear = true })

-- autocmd({ "BufNewFile", "BufRead" }, {
--   group = DetectGoTemplate,
--   pattern = "*.html",
--   callback = function()
--     vim.cmd([[
--       if expand('%:e') == "html" && search("{{") != 0
--         "set filetype=gohtmltmpl
--         set filetype=htmldjango
--       endif
--       ]])
--   end,
-- })

-- function DetectGoHtmlTmpl()
--     if expand('%:e') == "html" && search("{{") != 0
--         setfiletype gohtmltmpl
--     endif
-- endfunction
