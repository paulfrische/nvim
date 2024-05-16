return {
  'hrsh7th/nvim-cmp',
  event = 'InsertEnter',
  dependencies = {
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-emoji',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',

    { 'L3MON4D3/LuaSnip', build = 'make install_jsregexp' },
    'saadparwaiz1/cmp_luasnip',

    'onsails/lspkind.nvim',
    'nvim-tree/nvim-web-devicons',
  },

  config = function()
    local cmp = require('cmp')
    local lspkind = require('lspkind')

    cmp.setup({
      ---@diagnostic disable-next-line: missing-fields
      formatting = {
        fields = { 'abbr', 'kind', 'menu' },
        format = lspkind.cmp_format({
          mode = 'symbol',
        }),
      },

      view = {
        ---@diagnostic disable-next-line: missing-fields
        entries = {
          follow_cursor = true,
        },
      },

      sources = {
        { name = 'nvim_lsp', priority = 1000 },
        { name = 'luasnip' },
        { name = 'neorg' },
        { name = 'emoji' },
        { name = 'path' },
      },

      snippet = {
        expand = function(args)
          require('luasnip').lsp_expand(args.body)
        end,
      },

      mapping = {
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
      },

      experimental = {
        ghost_text = true,
      },
    })

    cmp.setup.cmdline(':', {
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
  end,
}
