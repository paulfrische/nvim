local icons = require('paul.icons')

return {
  'stevearc/overseer.nvim',
  config = function()
    local overseer = require('overseer')

    overseer.setup({})

    vim.keymap.set('n', '<leader>ot', overseer.toggle, { desc = 'toggle overseer ' .. icons.TERMINAL })
    vim.keymap.set('n', '<leader>oc', overseer.run_template, { desc = 'run overseer (custom) ' .. icons.TERMINAL })
    vim.keymap.set('n', '<leader>or', '<cmd>OverseerRun<cr>', { desc = 'run overseer ' .. icons.TERMINAL })
  end,
}
