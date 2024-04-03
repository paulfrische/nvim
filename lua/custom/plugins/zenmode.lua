local icons = require('common.icons')

return {
  'folke/zen-mode.nvim',
  dependencies = {
    'folke/twilight.nvim',
  },
  keys = {
    { '<leader>z', '<cmd>ZenMode<cr>', desc = 'Toggle Zen Mode' .. icons.PLUGIN },
  },
  opts = {
    window = {
      backdrop = 1,
      options = {
        number = false,
        relativenumber = false,
      },
    },

    plugins = {
      alacritty = {
        enabled = true,
        font = '16',
      },
    },
  },
}
