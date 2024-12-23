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
    },

    completion = {
      list = {
        selection = 'auto_insert',
      },

      documentation = {
        auto_show = true,
      },
    },
  },
}
