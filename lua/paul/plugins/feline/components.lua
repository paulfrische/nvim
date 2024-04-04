local M = {}

local icons = require('common.icons')

M.icon = {
  provider = ' ' .. icons.LAMBDA .. ' ',
  hl = {
    fg = 'red',
  },
}

-- mode
local vi_mode_utils = require('feline.providers.vi_mode')
local vi_mode_hl = function()
  return {
    name = vi_mode_utils.get_mode_highlight_name(),
    fg = vi_mode_utils.get_mode_color(),
  }
end

M.vi_mode = {
  provider = '▊',
  hl = vi_mode_hl,
}
-- util
local make_component = function(name, icon)
  if icon ~= nil then
    return {
      provider = name,
      icon = ' ' .. icon .. ' ',
      left_sep = ' ',
      right_sep = ' ',
    }
  end
  return {
    provider = name,
    left_sep = ' ',
    right_sep = ' ',
  }
end

-- file
M.file_info = make_component('file_info')

-- git
M.git_added = make_component('git_diff_added')
M.git_removed = make_component('git_diff_removed')
M.git_changed = make_component('git_diff_changed')
M.git_branch = make_component('git_branch', icons.GIT)

-- lsp
M.lsp_name = make_component('lsp_client_names', icons.LSP)
M.lsp_errors = make_component('diagnostic_errors')
M.lsp_warnings = make_component('diagnostic_warnings')
M.lsp_hints = make_component('diagnostic_hints')
M.lsp_info = make_component('diagnostic_info')

-- define wrappers over components to make config.lua DRY
M.git = function()
  return M.git_added, M.git_removed, M.git_changed
end

M.lsp = function()
  return M.lsp_errors, M.lsp_warnings, M.lsp_hints, M.lsp_info
end

return M
