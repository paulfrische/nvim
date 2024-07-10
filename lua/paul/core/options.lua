vim.g.mapleader = ' '

vim.opt.clipboard = 'unnamedplus'

vim.opt.laststatus = 3

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.jumpoptions = 'stack'

vim.opt.smarttab = true
vim.opt.smartindent = true

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.number = true
vim.opt.relativenumber = false

vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8

vim.opt.title = true

vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣', eol = '¬' }
vim.opt.fillchars = { eob = ' ' }

vim.opt.cmdheight = 0

vim.opt.undofile = true
vim.opt.undodir = vim.fn.stdpath('data') .. '/undofiles'

vim.opt.swapfile = false
vim.opt.updatetime = 50

vim.opt.signcolumn = 'yes'

vim.opt.virtualedit = 'block'

vim.opt.termguicolors = true

vim.opt.inccommand = 'split'

vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.splitkeep = 'screen'

vim.opt.showmode = false

-- vim.opt.cursorline = true
-- vim.opt.guicursor = 'n-r:block,i:hor100'
vim.opt.guicursor = 'i:block'

-- vim.opt.spelllang = 'en_us,de_20'
-- vim.opt.spell = true

-- autoindent
vim.keymap.set('n', 'i', function()
  ---@diagnostic disable-next-line: param-type-mismatch
  if #vim.fn.getline('.') == 0 then
    return '"_cc'
  end
  return 'i'
end, { expr = true })
