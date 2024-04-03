local icons = require('common.icons')

return {
  'NeogitOrg/neogit',
  dependencies = {
    'sindrets/diffview.nvim',
  },
  keys = {
    { '<leader>gg', '<cmd>Neogit<cr>', desc = 'Open Neogit ' .. icons.GIT },
  },
  cmd = 'Neogit',
  config = true,
}
