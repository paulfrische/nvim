local icons = require('paul.icons')

return {
  'folke/trouble.nvim',
  branch = 'dev',
  keys = {
    {
      '<leader>e',
      '<cmd>Trouble diagnostics toggle<cr>',
      desc = 'Diagnostics (Trouble) ' .. icons.LSP,
    },
    {
      '<leader>ls',
      '<cmd>Trouble symbols toggle<cr>',
      desc = 'Diagnostics (Trouble) ' .. icons.LSP,
    },
  },
  config = true,
}
