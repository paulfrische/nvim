return {
  'folke/zen-mode.nvim',
  dependencies = {
    'folke/twilight.nvim',
  },
  opts = {
    window = {
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
