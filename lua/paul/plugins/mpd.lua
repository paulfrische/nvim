local icons = require('paul.icons')

return {
  'paulfrische/mpd.nvim',
  keys = {
    { '<leader>ma', '<cmd>lua require("mpd").actions()<cr>', desc = 'Control MPD ' .. icons.MUSIC },
    { '<leader>mt', '<cmd>lua require("mpd").toggle()<cr>', desc = 'Pause/Play MPD ' .. icons.MUSIC },
  },
}
