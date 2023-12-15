-- Here is where you configure the autocompletion settings.
local lsp_zero = require('lsp-zero')
lsp_zero.extend_cmp()

local cmp = require('cmp')

local sources = {
  { name = 'neorg' },
  { name = 'nvim_lsp', priority = 1000 },
  { name = 'luasnip', keyword_length = 2 },
  { name = 'crates' },
  { name = 'emoji' },
  { name = 'path' },
  { name = 'buffer' },
}

local formatting = {
  fields = { 'abbr', 'kind', 'menu' },
  format = require('lspkind').cmp_format({
    mode = 'symbol',
  }),
}

local sign = function(opts)
  vim.fn.sign_define(opts.name, {
    texthl = opts.name,
    text = opts.text,
    numhl = '',
  })
end

sign({ name = 'DiagnosticSignError', text = '✘' })
sign({ name = 'DiagnosticSignWarn', text = '▲' })
sign({ name = 'DiagnosticSignHint', text = '⚑' })
sign({ name = 'DiagnosticSignInfo', text = '' })

vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  update_in_insert = true,
  underline = true,
  serverity_sort = true,
})

-- load custom snippets
require('luasnip.loaders.from_vscode').lazy_load()

cmp.setup({
  formatting = formatting,

  sources = sources,
  mapping = cmp.mapping.preset.insert({
    ['<CR>'] = cmp.mapping.confirm({
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    }),
    ['<C-d>'] = cmp.mapping.scroll_docs(4),
    ['<C-u>'] = cmp.mapping.scroll_docs(-4),
    ['<C-p>'] = cmp.mapping.select_prev_item(),
    -- use C-n to trigger completion too
    ['<C-n>'] = function(_)
      if cmp.visible() then
        cmp.select_next_item()
      else
        cmp.complete()
      end
    end,
  }),

  experimental = {
    ghost_text = true,
  },
})

require('cmp').setup.cmdline('/', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = 'buffer' },
  },
})

require('cmp').setup.cmdline(':', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({
    { name = 'path' },
  }, {
    {
      name = 'cmdline',
      option = {
        ignore_cmds = { 'Man', '!' },
      },
    },
  }),
})
