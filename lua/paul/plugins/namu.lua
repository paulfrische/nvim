return {
  'bassamsdata/namu.nvim',

  config = function()
    require('namu').setup({
      ui_select = {
        enable = true,
      },
    })

    vim.keymap.set('n', '<leader>ns', '<cmd>Namu symbols<cr>')

    vim.keymap.set('n', '<leader>f,', '<cmd>Nerdy<cr>')
  end,
}
