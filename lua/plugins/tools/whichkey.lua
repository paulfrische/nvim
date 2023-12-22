local wk = require('which-key')

local icons = require('common.icons')

-- custom mappings
wk.register({
  -- Telescope
  f = { '<cmd>Telescope find_files<cr>', 'Fuzzy Find Files ' .. icons.FILES },
  ds = { '<cmd>Telescope lsp_document_symbols<cr>', 'Telescope LSP Document Symbols ' .. icons.LSP },
  ws = { '<cmd>Telescope lsp_dynamic_workspace_symbols<cr>', 'Telescope LSP Workspace Symbols ' .. icons.LSP },
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
    'Find String in Project ' .. icons.UTIL,
  },

  -- code actions
  a = { vim.lsp.buf.code_action, 'perform code actions ' .. icons.LSP },

  -- Oil
  x = { '<cmd>Oil<cr>', 'Open Oil.nvim ' .. icons.FILES },

  -- Neogit
  gg = { '<cmd>Neogit<cr>', 'Open Neogit ' .. icons.GIT },

  -- toggleterm
  t = { '<cmd>ToggleTerm<cr>', 'Open Terminal ' .. icons.TERMINAL },

  -- trouble
  e = { '<cmd>TroubleToggle<cr>', 'Open/Close Trouble.nvim ' .. icons.LSP },

  -- neorg
  nn = { '<cmd>Neorg index<cr>', 'Open Neorg ' .. icons.NOTES },
  nr = { '<cmd>Neorg return<cr>', 'Open Neorg ' .. icons.NOTES },

  -- lazy
  p = { '<cmd>Lazy<cr>', 'Open Lazy UI ' .. icons.PLUGIN },

  -- compile code
  c = { require('core.compile').compile, 'Compile Code ' .. icons.UTIL },

  -- split
  v = { '<cmd>vsplit<cr>', 'Vertical Split ' .. icons.UTIL },
  h = { '<cmd>split<cr>', 'Horizontal Split ' .. icons.UTIL },
}, { prefix = '<leader>' })

-- remaps
wk.register({
  ['<C-u>'] = { '<C-u>zz', 'jump up half a page ' .. icons.UTIL },
  ['<C-d>'] = { '<C-d>zz', 'jump down half a page ' .. icons.UTIL },
  ['<ESC>'] = { '<cmd>noh<cr>', 'clear (search) highlights ' .. icons.UTIL },
  n = { 'nzz', 'next search result ' .. icons.UTIL },
  N = { 'Nzz', 'previous search result ' .. icons.UTIL },
})

wk.register({
  ['<ESC>'] = { '<C-\\><C-n>', 'exit terminal ' .. icons.TERMINAL },
}, { mode = 't' })
