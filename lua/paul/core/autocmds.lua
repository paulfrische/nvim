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

vim.api.nvim_create_autocmd({ 'BufNew', 'BufEnter' }, {
  pattern = '*.cpp',
  callback = function()
    vim.keymap.set('n', '<leader>fi', '<cmd>vs %<.hpp<cr>', { buffer = true })
  end,
})

vim.api.nvim_create_autocmd({ 'BufNew', 'BufEnter' }, {
  pattern = '*.hpp',
  callback = function()
    vim.keymap.set('n', '<leader>fi', '<cmd>vs %<.cpp<cr>', { buffer = true })
  end,
})
