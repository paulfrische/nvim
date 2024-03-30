return {
  'folke/zen-mode.nvim',
  dependencies = {
    'folke/twilight.nvim',
  },
  opts = {
    window = {
      backdrop = 1,
      options = {
        number = false,
        relativenumber = false,
      },
    },

    plugins = {
      alacritty = {
        enabled = true,
        font = '16',
      },
    },
  },
}
