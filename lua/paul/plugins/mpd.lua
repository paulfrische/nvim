local icons = require('paul.icons')

return {
  'paulfrische/mpd.nvim',
  event = 'VeryLazy',
  config = function()
    local mpd = require('mpd')
    mpd.setup({})

    vim.keymap.set('n', '<leader>ma', mpd.actions, { desc = 'Control MPD ' .. icons.MUSIC })
    vim.keymap.set('n', '<leader>mt', mpd.toggle, { desc = 'Pause/Play MPD ' .. icons.MUSIC })
  end,
}
