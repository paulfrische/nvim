local icons = require('paul.icons')

vim.keymap.set('n', '<leader>p', '<cmd>Lazy<cr>', { desc = 'Open Lazy UI ' .. icons.PLUGIN })

-- jumping
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'jump up half a page ' .. icons.UTIL })
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'jump down half a page ' .. icons.UTIL })
vim.keymap.set('n', 'n', 'nzz', { desc = 'next search result ' .. icons.UTIL })
vim.keymap.set('n', 'N', 'Nzz', { desc = 'previous search result ' .. icons.UTIL })
vim.keymap.set('n', '<C-i>', '<C-i>', { desc = 'jump to next location in jumplist ' .. icons.UTIL })
vim.keymap.set('n', '<Tab>', '<C-w>w', { desc = 'cycle through windows ' .. icons.UTIL })

vim.keymap.set('n', 'H', '_', { desc = 'jump through (logical) start of line ' .. icons.UTIL })
vim.keymap.set('n', 'L', '$', { desc = 'jump through (logical) end of line ' .. icons.UTIL })

vim.keymap.set('n', '<Esc>', '<cmd>noh<cr>', { desc = 'clear search highlights' .. icons.UTIL })
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', { desc = 'exit terminal ' .. icons.TERMINAL })

vim.keymap.set('n', '<leader>+', '<C-a>', { desc = 'Increment number ' .. icons.UTIL })
vim.keymap.set('n', '<leader>-', '<C-x>', { desc = 'Decrement number ' .. icons.UTIL })
