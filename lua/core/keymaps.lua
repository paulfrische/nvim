local icons = require('common.icons')

vim.keymap.set('n', '<leader>a', vim.lsp.buf.code_action, { desc = 'perform code actions ' .. icons.LSP })
vim.keymap.set('n', '<leader>p', '<cmd>Lazy<cr>', { desc = 'Open Lazy UI ' .. icons.PLUGIN })

-- splitting
vim.keymap.set(
  'n',
  '<leader>v',
  '<cmd>vsplit<cr><cmd>Oil<cr>',
  { desc = 'Vertical Split ' .. icons.UTIL .. ' ' .. icons.FILES }
)
vim.keymap.set(
  'n',
  '<leader>h',
  '<cmd>split<cr><cmd>Oil<cr>',
  { desc = 'Horizontal Split ' .. icons.UTIL .. ' ' .. icons.FILES }
)

-- jumping
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'jump up half a page ' .. icons.UTIL })
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'jump down half a page ' .. icons.UTIL })
vim.keymap.set('n', 'n', 'nzz', { desc = 'next search result ' .. icons.UTIL })
vim.keymap.set('n', 'N', 'Nzz', { desc = 'previous search result ' .. icons.UTIL })
vim.keymap.set('n', '<C-i>', '<C-i>', { desc = 'jump to next location in jumplist ' .. icons.UTIL })
vim.keymap.set('n', '<Tab>', '<C-w>w', { desc = 'cycle through windows ' .. icons.UTIL })

vim.keymap.set('n', '<Esc>', '<cmd>noh<cr>', { desc = 'clear search highlights' .. icons.UTIL })
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', { desc = 'exit terminal ' .. icons.TERMINAL })
