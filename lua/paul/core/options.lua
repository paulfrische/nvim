vim.g.mapleader = ' '

vim.opt.clipboard = 'unnamedplus'

vim.opt.laststatus = 3

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 0
vim.opt.expandtab = true

vim.opt.jumpoptions = 'stack'

vim.opt.smarttab = true
vim.opt.smartindent = true

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8

vim.opt.title = true

vim.opt.list = true
-- vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣', eol = '¬' }
vim.opt.listchars = { tab = '  ', trail = '·' }
vim.opt.fillchars = { eob = ' ' }

vim.opt.cmdheight = 0

vim.opt.undofile = true
vim.opt.undodir = vim.fn.stdpath('data') .. '/undofiles'

vim.opt.swapfile = false
vim.opt.updatetime = 50
vim.opt.timeoutlen = 250

vim.opt.signcolumn = 'yes'

vim.opt.virtualedit = 'block'

vim.opt.termguicolors = true

vim.opt.inccommand = 'split'

vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.splitkeep = 'screen'

vim.opt.showmode = false

vim.opt.wrap = false

vim.opt.more = false

-- vim.opt.guicursor = 'n-r:block,i:hor100'
-- vim.opt.guicursor = 'i:block'

-- autoindent
vim.keymap.set('n', 'i', function()
  ---@diagnostic disable-next-line: param-type-mismatch
  if #vim.fn.getline('.') == 0 then
    return '"_cc'
  end
  return 'i'
end, { expr = true })

vim.diagnostic.config({
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = '',
      [vim.diagnostic.severity.WARN] = '',
      [vim.diagnostic.severity.INFO] = '',
      [vim.diagnostic.severity.HINT] = '',
    },
    numhl = {
      [vim.diagnostic.severity.WARN] = 'WarningMsg',
      [vim.diagnostic.severity.ERROR] = 'ErrorMsg',
      [vim.diagnostic.severity.INFO] = 'DiagnosticInfo',
      [vim.diagnostic.severity.HINT] = 'DiagnosticHint',
    },
  },
})
