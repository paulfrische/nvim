local icons = require('paul.icons')

return {
  'akinsho/toggleterm.nvim',
  cmd = 'ToggleTerm',
  keys = {
    { '<leader>t', '<cmd>ToggleTerm<cr>', desc = 'Open Terminal ' .. icons.TERMINAL },
  },
  config = true,
}
