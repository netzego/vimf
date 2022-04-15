local base = require("pepe.base")
local plugins = require("pepe.plugins.highlights")
local languages = require("pepe.languages")
local utils = require("pepe.utils")

local specs = { base, languages, plugins }
local spec = utils.merge(specs)

local M = {}
M.load = function()
  utils.highlights(spec)
end

require("pepe.plugins.lightline").init(spec)

return M
