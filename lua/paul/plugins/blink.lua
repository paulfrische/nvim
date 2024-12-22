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

    -- highlight = {
    --   use_nvim_cmp_as_default = true,
    -- },

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
