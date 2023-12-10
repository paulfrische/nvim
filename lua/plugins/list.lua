local function cfg(p)
  return function()
    require('plugins.' .. p)
  end
end

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
    cmd = 'Telescope',
    config = cfg('tools.telescope'),
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

    { 'williamboman/mason.nvim', lazy = false, config = true },

    {
      'hrsh7th/nvim-cmp',
      event = 'InsertEnter',
      dependencies = {
        { 'L3MON4D3/LuaSnip' },

        -- styling
        { 'onsails/lspkind.nvim' },

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
      },
      config = cfg('lang.lsp'),
    },
  },
}
