return {
  'leath-dub/snipe.nvim',
  config = function()
    local snipe = require('snipe')

    snipe.setup({})

    vim.keymap.set('n', 'gb', snipe.open_buffer_menu, { desc = 'Open Snipe ' .. require('paul.icons').FILES })
  end,
}
