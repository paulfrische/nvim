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

    windows = {
      autocomplete = {
        selection = 'auto_insert',
      },
      ghost_text = {
        enabled = true,
      },
    },

    -- experimental signature help support
    trigger = { signature_help = { enabled = true } },
  },
}
