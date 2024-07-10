return {
  'NeogitOrg/neogit',
  dependencies = {
    'sindrets/diffview.nvim',
  },
  event = 'VeryLazy',
  config = function()
    local icons = require('paul.icons')

    local neogit = require('neogit')
    neogit.setup({})

    vim.keymap.set('n', '<leader>gg', neogit.open, { desc = 'Open Neogit ' .. icons.GIT })
  end,
}
