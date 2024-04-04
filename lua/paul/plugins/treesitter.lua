return {
  'nvim-treesitter/nvim-treesitter',
  dependencies = {
    { 'nvim-treesitter/nvim-treesitter-textobjects' },
    { 'nvim-treesitter/nvim-treesitter-context' },
    { 'windwp/nvim-ts-autotag' },
  },
  event = { 'BufNew', 'BufReadPre', 'InsertEnter' },
  build = ':TSUpdate',
  config = function()
    require('nvim-treesitter.configs').setup({
      ensure_installed = { 'lua', 'c', 'vim', 'vimdoc', 'query' },
      auto_install = true,

      highlight = { enable = true },
      indent = { enable = true },
      autotag = { enable = true },

      textobjects = {
        select = {
          enable = true,
          keymaps = {
            ['af'] = {
              query = '@function.outer',
              desc = 'select function [outer]',
            },
            ['if'] = {
              query = '@function.inner',
              desc = 'select function [inner]',
            },
            ['ac'] = {
              query = '@class.outer',
              desc = 'select class [outer]',
            },
            ['ic'] = {
              query = '@class.inner',
              desc = 'select class [inner]',
            },
            ['il'] = {
              query = '@loop.inner',
              desc = 'select loop [inner]',
            },
            ['al'] = {
              query = '@loop.outer',
              desc = 'select loop [outer]',
            },
          },
        },
      },
    })

    require('treesitter-context').setup({})
  end,
}
