require('paul.core')

local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  })
end

---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

---@diagnostic disable-next-line: param-type-mismatch
require('lazy').setup({
  spec = {
    { import = 'paul.plugins' },
  },

  git = {
    timeout = 5 * 60,
  },

  checker = { enabled = true },

  install = { colorscheme = { 'default' } },
})
