return {
  'stevearc/oil.nvim',
  lazy = false,
  config = function()
    require('oil').setup({
      columns = {
        'permissions',
        'icon',
      },
    })
  end,
}
