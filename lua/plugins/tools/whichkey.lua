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
  v = { '<cmd>vsplit<cr><cmd>Oil<cr>', 'Vertical Split ' .. icons.UTIL .. ' ' .. icons.FILES },
  h = { '<cmd>split<cr><cmd>Oil<cr>', 'Horizontal Split ' .. icons.UTIL .. ' ' .. icons.FILES },
}, { prefix = '<leader>' })

-- remaps
wk.register({
  ['<C-u>'] = { '<C-u>zz', 'jump up half a page ' .. icons.UTIL },
  ['<C-d>'] = { '<C-d>zz', 'jump down half a page ' .. icons.UTIL },
  ['<ESC>'] = { '<cmd>noh<cr>', 'clear (search) highlights ' .. icons.UTIL },
  ['n'] = { 'nzz', 'next search result ' .. icons.UTIL },
  ['N'] = { 'Nzz', 'previous search result ' .. icons.UTIL },

  -- trouble
  ['[d'] = {
    function()
      require('trouble').next({})
    end,
    'Jump to next diagnostic ' .. icons.LSP,
  },
  [']d'] = {
    function()
      require('trouble').previous({})
    end,
    'Jump to previous diagnostic ' .. icons.LSP,
  },

  ['<C-i>'] = { '<C-i>', 'jump to next location' },
  ['<Tab>'] = { '<C-w>w', 'cycle through windows' .. icons.UTIL },

  -- Oil
  ['-'] = { '<cmd>Oil<cr>', 'Open Oil' .. icons.FILES },
})

wk.register({
  ['J'] = { ':m \'>+1<cr>gv=gv', 'Move selected text up by 1 line ' .. icons.UTIL },
  ['K'] = { ':m \'>-2<cr>gv=gv', 'Move selected text down by 1 line ' .. icons.UTIL },
}, { mode = 'v' })

wk.register({
  ['<ESC>'] = { '<C-\\><C-n>', 'exit terminal ' .. icons.TERMINAL },
}, { mode = 't' })
