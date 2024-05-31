local function language_servers()
  local buf = vim.api.nvim_get_current_buf()
  local clients = vim.lsp.get_clients({ bufnr = buf })

  if #clients == 0 then
    return 'none '
  end

  local names = ''

  for _, client in ipairs(clients) do
    names = names .. client.name .. ' '
  end

  return names
end

return {
  'nvim-lualine/lualine.nvim',
  opts = {
    options = {
      icons_enabled = true,
      theme = 'auto',
      component_separators = '',
      section_separators = { right = '', left = '' },
      globalstatus = true,
    },

    sections = {
      lualine_a = {
        { 'mode', separator = { left = '', right = '' }, right_padding = 2 },
      },
      lualine_b = {},
      lualine_c = {
        '%=',
        'filename',
        'filetype',
      },
      lualine_x = {},
      lualine_y = {
        'diagnostics',
        language_servers,
      },
      lualine_z = {
        { 'location', separator = { right = '' }, left_padding = 2 },
      },
    },
  },
}
