local icons = require('paul.icons')

return {
  'stevearc/oil.nvim',
  lazy = false,
  keys = {
    { '-', '<cmd>Oil<cr>', desc = 'Open Oil' .. icons.FILES },
    { '<leader>h', '<cmd>split<cr><cmd>Oil<cr>', desc = 'Horizontal Split ' .. icons.UTIL .. ' ' .. icons.FILES },
    { '<leader>v', '<cmd>vsplit<cr><cmd>Oil<cr>', desc = 'Vertical Split ' .. icons.UTIL .. ' ' .. icons.FILES },
  },
  ft = '',
  config = function()
    require('oil').setup({
      columns = {
        'permissions',
        'icon',
      },
    })
  end,
}
