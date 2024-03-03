return {
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
  config = function()
    ---@diagnostic disable: redefined-local
    local ok, telescope = pcall(require, 'telescope')
    if not ok then
      print('error loading telescope')
      return
    end

    telescope.setup({
      extensions = {
        ['fzf'] = {
          override_generic_sorter = true,
        },
        ['ui-select'] = {},
      },
    })

    local ok, err = pcall(telescope.load_extension, 'fzf')
    if not ok then
      print(err)
    end

    telescope.load_extension('ui-select')

    vim.api.nvim_create_user_command('TH', 'Telescope help_tags', {})
  end,
}
