return {
  'rachartier/tiny-inline-diagnostic.nvim',
  event = 'VeryLazy',
  enabled = false,
  config = function()
    -- vim.diagnostic.config({ virtual_text = false })
    require('tiny-inline-diagnostic').setup({})
  end,
}
