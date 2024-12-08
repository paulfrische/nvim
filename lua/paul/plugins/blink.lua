return {
  'saghen/blink.cmp',
  lazy = false, -- lazy loading handled internally
  version = 'v0.*',

  opts = {
    keymap = {
      preset = 'default',
      ['<C-n>'] = { 'show', 'select_next' },
      ['<C-p>'] = { 'select_prev' },
      ['<CR>'] = { 'accept', 'fallback' },
    },

    highlight = {
      use_nvim_cmp_as_default = true,
    },

    completion = {
      list = {
        selection = 'auto_insert',
      },

      documentation = {
        auto_show = true,
      },

      ghost_text = {
        enabled = true,
      },
    },

    -- experimental signature help support
    trigger = { signature_help = { enabled = true } },
  },
}
