return {
  'folke/edgy.nvim',
  event = 'VeryLazy',
  opts = {
    animate = {
      fps = 120,
      cps = 1000,
    },

    -- layout
    bottom = {
      {
        ft = 'toggleterm',
        size = { height = 0.4 },
      },
      {
        ft = 'trouble',
        size = { height = 0.4 },
      },
    },
    right = {
      {
        ft = 'help',
        size = { width = 0.8 },
      },
    },
  },
}
