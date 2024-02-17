return {
  'freddiehaddad/feline.nvim',
  lazy = true,
  event = 'ColorScheme',
  config = function()
    local components = require('custom.plugins.feline.config').components
    local properties = require('custom.plugins.feline.config').properties

    require('feline').setup({
      properties = properties,
      components = components,
      theme = vim.g.colors_name,
    })
    require('feline').winbar.setup({})
  end,
}
