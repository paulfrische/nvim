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

-- TODO: automate autocmd creation

-- makefile
vim.api.nvim_create_autocmd('BufNewFile', {
  pattern = 'Makefile',
  command = '0r ~/.config/nvim/templates/Makefile',
})

-- .clang-format
vim.api.nvim_create_autocmd('BufNewFile', {
  pattern = '.clang-format',
  command = '0r ~/.config/nvim/templates/.clang-format',
})
