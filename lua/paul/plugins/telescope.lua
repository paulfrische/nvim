local icons = require('paul.icons')

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
  keys = {
    { '<leader>f', '<cmd>Telescope find_files<cr>', desc = 'Fuzzy Find Files ' .. icons.FILES },
    { '<leader>ds', '<cmd>Telescope lsp_document_symbols<cr>', desc = 'Telescope LSP Document Symbols ' .. icons.LSP },
    {
      '<leader>ws',
      '<cmd>Telescope lsp_workspace_symbols<cr>',
      desc = 'Telescope LSP Workspace Symbols ' .. icons.LSP,
    },
    {
      '<leader>s',
      function()
        local prompt = vim.fn.input('Grep > ')
        if prompt == '' then
          return
        end
        require('telescope.builtin').grep_string({
          search = prompt,
        })
      end,
      desc = 'Find String in Project ' .. icons.UTIL,
    },
  },
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
