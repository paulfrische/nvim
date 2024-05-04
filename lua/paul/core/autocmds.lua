local custom = vim.api.nvim_create_augroup('Custom', {})

vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = custom,
  pattern = '*',
})

-- Don't auto comment new line
vim.api.nvim_create_autocmd('BufEnter', {
  group = custom,
  command = 'set formatoptions-=cro',
})

-- makefile
vim.api.nvim_create_autocmd('BufNewFile', {
  pattern = 'Makefile',
  command = '0r ~/.config/nvim/templates/Makefile',
})
