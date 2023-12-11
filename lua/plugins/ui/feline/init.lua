local components = require('plugins.ui.feline.config').components
local properties = require('plugins.ui.feline.config').properties

require('feline').setup({
  properties = properties,
  components = components,
  theme = vim.g.colors_name,
})
require('feline').winbar.setup({})
