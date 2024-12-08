local modes = {
  ['n'] = 'NORMAL',
  ['no'] = 'NORMAL',
  ['v'] = 'VISUAL',
  ['V'] = 'LINE',
  [''] = 'BLOCK',
  ['s'] = 'SELECT',
  ['S'] = 'SELECT LINE',
  [''] = 'SELECT BLOCK',
  ['i'] = 'INSERT',
  ['ic'] = 'INSERT',
  ['R'] = 'REPLACE',
  ['Rv'] = 'VISUAL REPLACE',
  ['c'] = 'C',
  ['cv'] = 'EX',
  ['ce'] = 'X',
  ['r'] = 'P',
  ['rm'] = 'M',
  ['r?'] = 'C',
  ['!'] = 'SH',
  ['t'] = 'TERMINAL',
}

local components = {}

components.mode = {
  provider = function()
    return '  ' .. modes[vim.api.nvim_get_mode().mode] .. '  '
  end,

  hl = function()
    return {
      fg = 'Normal',
      style = 'bold',
    }
  end,

  left_sep = 'block',
  right_sep = 'block',
}

components.file = {
  provider = function()
    local filename = vim.api.nvim_buf_get_name(0)
    if filename == '' then
      filename = '[scratch]'
    end
    return vim.fn.fnamemodify(filename, ':~:.')
  end,

  hl = function()
    return {
      fg = 'Normal',
    }
  end,
}

return {
  'freddiehaddad/feline.nvim',
  opts = {
    theme = {
      bg = '#1a1b26',
    },
    components = {
      active = {
        -- left
        {
          components.mode,
        },
        -- middle
        {
          components.file,
        },
        -- right
        {},
      },
    },
  },
}
