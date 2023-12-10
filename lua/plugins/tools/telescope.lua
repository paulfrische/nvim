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
  defaults = {
    sorting_strategy = 'ascending',
    borderchars = {
      { '─', '│', '─', '│', '┌', '┐', '┘', '└' },
      prompt = { '─', '│', ' ', '│', '┌', '┐', '│', '│' },
      results = { '─', '│', '─', '│', '├', '┤', '┘', '└' },
      preview = { '─', '│', '─', '│', '┌', '┐', '┘', '└' },
    },

    preview = false,

    prompt_prefix = ' 🔎 ',
    selection_caret = '➡️ ',

    file_ignore_patterns = {
      '__pycache__/',
      'node_modules/',
      '.git/',
    },

    layout_strategy = 'center',
    layout_config = {
      anchor = 'CENTER',
    },
  },
})

local ok, err = pcall(telescope.load_extension, 'fzf')
if not ok then
  print(err)
end

telescope.load_extension('ui-select')

vim.api.nvim_create_user_command('TH', 'Telescope help_tags', {})
