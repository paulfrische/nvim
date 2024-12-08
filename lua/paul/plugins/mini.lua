return {
  'echasnovski/mini.nvim',
  lazy = true,
  event = { 'VeryLazy', 'InsertEnter' },
  config = function()
    require('mini.surround').setup()
    require('mini.align').setup()
    require('mini.splitjoin').setup()

    -- require('mini.pairs').setup({
    --   modes = { command = true },
    -- })

    require('mini.move').setup({
      mappings = {
        left = 'H',
        right = 'L',
        down = 'J',
        up = 'K',
      },
    })
  end,
}
