require('nvim-treesitter.configs').setup({
  ensure_installed = { 'lua', 'c', 'vim', 'vimdoc', 'query' },
  auto_install = true,
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
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  },
  autotag = {
    enable = true,
  },
})

require('treesitter-context').setup({})
