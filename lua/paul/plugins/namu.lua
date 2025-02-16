return {
  'bassamsdata/namu.nvim',

  config = function()
    require('namu').setup({
      ui_select = {
        enable = true,
      },
    })

    vim.keymap.set('n', '<leader>ns', '<cmd>Namu symbols<cr>')
  end,
}
