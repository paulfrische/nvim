return {
  'echasnovski/mini.nvim',
  lazy = true,
  event = { 'VeryLazy', 'InsertEnter' },
  config = function()
    require('mini.surround').setup()

    require('mini.align').setup()

    require('mini.splitjoin').setup()

    require('mini.comment').setup()

    -- require('mini.pairs').setup({
    --   modes = { command = true },
    -- })
  end,
}
