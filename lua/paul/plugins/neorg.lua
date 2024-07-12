local icons = require('paul.icons')

return {
  'nvim-neorg/neorg',
  dependencies = { 'nvim-neorg/neorg-telescope' },
  version = '*',
  -- lazy = false,
  keys = {
    { '<leader>nn', '<cmd>Neorg index<cr>', desc = 'Open Neorg ' .. icons.NOTES },
    { '<leader>nr', '<cmd>Neorg return<cr>', desc = 'Open Neorg ' .. icons.NOTES },
    { '<leader>nf', '<cmd>Telescope neorg find_norg_files<cr>', desc = 'Search through notes ' .. icons.NOTES },
  },
  opts = {
    load = {
      ['core.defaults'] = {}, -- Loads default behaviour
      ['core.completion'] = {
        config = {
          engine = 'nvim-cmp',
        },
      }, -- Loads default behaviour
      ['core.keybinds'] = {
        config = {
          default_keybinds = true,
        },
      }, -- Loads default keybinds

      ['core.integrations.telescope'] = {}, -- search notes via telescope

      ['core.concealer'] = {}, -- Adds pretty icons to your documents
      ['core.dirman'] = { -- Manages Neorg workspaces
        config = {
          workspaces = {
            notes = '~/notes',
          },
          default_workspace = 'notes',
        },
      },
    },
  },
}
