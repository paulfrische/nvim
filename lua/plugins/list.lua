local function cfg(p)
  return function()
    require('plugins.' .. p)
  end
end

local themes = require('plugins.colorscheme')

return {
  {
    'folke/which-key.nvim',
    event = 'VeryLazy',
    config = cfg('tools.whichkey'),
  },

  {
    'nvim-treesitter/nvim-treesitter',
    dependencies = {
      { 'nvim-treesitter/nvim-treesitter-textobjects' },
      { 'nvim-treesitter/nvim-treesitter-context' },
      { 'windwp/nvim-ts-autotag' },
    },
    event = { 'BufNew', 'BufReadPre', 'InsertEnter' },
    build = ':TSUpdate',
    config = cfg('lang.treesitter'),
  },

  {
    'nvim-telescope/telescope.nvim',
    dependencies = {
      {
        'nvim-lua/plenary.nvim',
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make',
      },
      'nvim-telescope/telescope-ui-select.nvim',
    },
    event = 'VeryLazy',
    cmd = 'Telescope',
    config = cfg('tools.telescope'),
  },

  -- color
  {
    'rebelot/kanagawa.nvim',
    lazy = false,
    priority = 1000,
    enabled = themes.selected == themes.themes.KANAGAWA,
    config = cfg('ui.kanagawa'),
  },

  {
    'jesseleite/nvim-noirbuddy',
    dependencies = {
      { 'tjdevries/colorbuddy.nvim', branch = 'dev' },
    },
    enabled = themes.selected == themes.themes.NOIRBUDDY,
    lazy = false,
    priority = 1000,
    config = cfg('ui.noirbuddy'),
  },

  -- other color
  {
    'uga-rosa/ccc.nvim',
    event = 'BufEnter',
    config = cfg('ui.ccc'),
  },

  -- files
  {
    'stevearc/oil.nvim',
    lazy = false,
    config = cfg('tools.oil'),
  },

  -- icons
  {
    '2KAbhishek/nerdy.nvim',
    dependencies = {
      -- 'stevearc/dressing.nvim',
      'nvim-telescope/telescope.nvim',
    },
    cmd = 'Nerdy',
  },

  -- gitsigns
  {
    'lewis6991/gitsigns.nvim',
    event = 'VeryLazy',
    config = true,
  },

  -- mini.nvim
  {
    'echasnovski/mini.nvim',
    lazy = true,
    event = { 'VeryLazy', 'InsertEnter' },
    config = cfg('tools.mini'),
  },

  -- feline
  {
    'freddiehaddad/feline.nvim',
    lazy = false,
    config = cfg('ui.feline'),
  },

  -- git good noob
  {
    'NeogitOrg/neogit',
    dependencies = {
      { 'sindrets/diffview.nvim' },
    },
    cmd = 'Neogit',
    config = true,
  },

  -- terminal
  {
    'akinsho/toggleterm.nvim',
    cmd = 'ToggleTerm',
    config = true,
  },

  -- neorg
  {
    'nvim-neorg/neorg',
    cmd = 'Neorg',
    build = ':Neorg sync-parsers',
    config = cfg('tools.neorg'),
  },

  -- shiny comments
  {
    'folke/todo-comments.nvim',
    event = 'BufEnter',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = true,
  },

  -- trouble
  {
    'folke/trouble.nvim',
    cmd = { 'Trouble', 'TroubleToggle' },
    config = true,
  },

  -- format
  {
    'stevearc/conform.nvim',
    event = 'BufWritePre',
    cmd = { 'ConformInfo' },
    config = cfg('tools.conform'),
  },

  -- LSP
  {
    {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v3.x',
      lazy = true,
      config = false,
      init = function()
        vim.g.lsp_zero_extend_cmp = 0
        vim.g.lsp_zero_extend_lspconfig = 0
      end,
    },

    { 'williamboman/mason.nvim', config = true },

    {
      'hrsh7th/nvim-cmp',
      event = 'InsertEnter',
      dependencies = {
        { 'L3MON4D3/LuaSnip' },

        -- styling
        { 'onsails/lspkind.nvim' },
        { 'nvim-tree/nvim-web-devicons' },

        -- other sources
        { 'hrsh7th/cmp-emoji' },
        { 'hrsh7th/cmp-cmdline' },
        { 'hrsh7th/cmp-path' },
        { 'hrsh7th/cmp-buffer' },
        { 'Saecki/crates.nvim' },
      },
      config = cfg('ui.cmp'),
    },

    {
      'neovim/nvim-lspconfig',
      cmd = { 'LspInfo', 'LspInstall', 'LspStart' },
      event = { 'BufReadPre', 'BufNewFile' },
      dependencies = {
        { 'williamboman/mason-lspconfig.nvim' },
        { 'hrsh7th/cmp-nvim-lsp' },
        { 'folke/neodev.nvim' },
      },
      config = cfg('lang.lsp'),
    },
  },
}
