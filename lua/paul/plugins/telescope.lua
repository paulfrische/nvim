local icons = require('paul.icons')

return {
  'nvim-telescope/telescope.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    {
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'make',
    },
    'nvim-telescope/telescope-ui-select.nvim',
  },

  event = 'VeryLazy',

  config = function()
    local telescope = require('telescope')

    telescope.setup({
      defaults = {
        border = false,
        file_ignore_patterns = {
          '.git',
        },
      },
      extensions = {
        ['ui-select'] = {},
        ['fzf'] = {},
      },
      pickers = {
        find_files = {
          hidden = true,
          -- theme = 'dropbox',
        },
      },
    })

    local ok, err = pcall(telescope.load_extension, 'fzf')
    if not ok then
      print(err)
    end

    telescope.load_extension('ui-select')

    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>fd', builtin.find_files, { desc = 'Fuzzy Find Files ' .. icons.FILES })
    vim.keymap.set('n', '<leader>fm', builtin.man_pages, { desc = 'Fuzzy Find Files ' .. icons.FILES })
    vim.keymap.set('n', '<leader>fs', builtin.live_grep, { desc = 'Grep String ' .. icons.FILES })
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Grep String ' .. icons.FILES })
    vim.keymap.set('n', '<leader>f,', '<cmd>Nerdy<cr>')

    vim.keymap.set('n', '<leader>en', function()
      builtin.find_files({ cwd = vim.fn.stdpath('config') })
    end, { desc = 'Edit Config ' .. icons.FILES })
  end,
}
