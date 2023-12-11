local wk = require('which-key')
wk.register({
  -- Telescope
  f = { '<cmd>Telescope find_files<cr>', 'Fuzzy Find Files' },
  ds = { '<cmd>Telescope lsp_document_symbols<cr>', 'Telescope LSP Document Symbols' },
  ws = { '<cmd>Telescope lsp_dynamic_workspace_symbols<cr>', 'Telescope LSP Workspace Symbols' },
  s = {
    function()
      local prompt = vim.fn.input('Grep > ')
      if prompt == '' then
        return
      end
      require('telescope.builtin').grep_string({
        search = prompt,
      })
    end,
    'Find String in Project',
  },

  -- Oil
  x = { '<cmd>Oil<cr>', 'Open Oil.nvim' },

  -- Neogit
  gg = { '<cmd>Neogit<cr>', 'Open Neogit' },

  -- toggleterm
  t = { '<cmd>ToggleTerm<cr>', 'Open Terminal' },

  -- trouble
  e = { '<cmd>TroubleToggle<cr>', 'Open/Close Trouble.nvim' },

  -- compile code
  c = { require('core.compile').compile, 'Compile Code' },
}, { prefix = '<leader>' })
