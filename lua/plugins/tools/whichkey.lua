local wk = require('which-key')

-- custom mappings
wk.register({
  -- Telescope
  f = { '<cmd>Telescope find_files<cr>', 'Fuzzy Find Files ' },
  ds = { '<cmd>Telescope lsp_document_symbols<cr>', 'Telescope LSP Document Symbols ' },
  ws = { '<cmd>Telescope lsp_dynamic_workspace_symbols<cr>', 'Telescope LSP Workspace Symbols ' },
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
    'Find String in Project 󰖷',
  },

  -- Oil
  x = { '<cmd>Oil<cr>', 'Open Oil.nvim ' },

  -- Neogit
  gg = { '<cmd>Neogit<cr>', 'Open Neogit 󰊢' },

  -- toggleterm
  t = { '<cmd>ToggleTerm<cr>', 'Open Terminal ' },

  -- trouble
  e = { '<cmd>TroubleToggle<cr>', 'Open/Close Trouble.nvim ' },

  -- neorg
  nn = { '<cmd>Neorg index<cr>', 'Open Neorg 󰺿' },
  nr = { '<cmd>Neorg return<cr>', 'Open Neorg 󰺿' },

  -- lazy
  p = { '<cmd>Lazy<cr>', 'Open Lazy UI 󱐥' },

  -- compile code
  c = { require('core.compile').compile, 'Compile Code 󰖷' },

  -- split
  v = { '<cmd>vsplit<cr>', 'Vertical Split 󰖷' },
}, { prefix = '<leader>' })

-- remaps
wk.register({
  ['<C-u>'] = { '<C-u>zz', 'jump up half a page 󰖷' },
  ['<C-d>'] = { '<C-d>zz', 'jump down half a page 󰖷' },
  ['<ESC>'] = { '<cmd>noh<cr>', 'clear (search) highlights 󰖷' },
  n = { 'nzz', 'next search result 󰖷' },
  N = { 'Nzz', 'previous search result 󰖷' },
})

wk.register({
  ['<ESC>'] = { '<C-\\><C-n>', 'exit terminal ' },
}, { mode = 't' })
