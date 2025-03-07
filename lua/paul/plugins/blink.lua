return {
  'saghen/blink.cmp',
  lazy = false, -- lazy loading handled internally
  version = '*',

  dependencies = {
    'rafamadriz/friendly-snippets',
  },

  opts = {
    keymap = {
      preset = 'default',
      ['<C-n>'] = { 'show', 'select_next' },
      ['<C-p>'] = { 'select_prev' },
      ['<CR>'] = { 'accept', 'fallback' },
      ['<C-k>'] = {},
    },

    completion = {
      list = {
        selection = {
          preselect = false,
          auto_insert = true,
        },
      },

      -- menu = {
      --   border = 'rounded',
      -- },

      documentation = {
        auto_show = true,
        window = {
          border = 'rounded',
        },
      },
    },

    signature = {
      enabled = true,
      window = {
        border = 'rounded',
      },
    },
  },
}
