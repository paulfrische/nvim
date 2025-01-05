return {
  'NeogitOrg/neogit',
  dependencies = {
    'sindrets/diffview.nvim',
  },

  keys = {
    '<leader>gg',
  },

  config = function()
    local icons = require('paul.icons')

    local neogit = require('neogit')
    neogit.setup({})

    vim.keymap.set('n', '<leader>gg', neogit.open, { desc = 'Open Neogit ' .. icons.GIT })
  end,
}
