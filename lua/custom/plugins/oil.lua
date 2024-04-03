local icons = require('common.icons')

return {
  'stevearc/oil.nvim',
  -- lazy = false,
  keys = {
    { '-', '<cmd>Oil<cr>', desc = 'Open Oil' .. icons.FILES },
  },
  config = function()
    require('oil').setup({
      columns = {
        'permissions',
        'icon',
      },
    })
  end,
}
