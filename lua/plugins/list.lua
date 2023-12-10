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
}
