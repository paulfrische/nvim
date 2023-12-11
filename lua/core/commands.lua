-- alias :Q to :qa!, :W to :w, :Wq to :wq, :WQ to :wq
vim.api.nvim_create_user_command('Q', 'qa!', {})
vim.api.nvim_create_user_command('W', 'w ++p', {})
vim.api.nvim_create_user_command('Wa', 'wa ++p', {})
vim.api.nvim_create_user_command('WA', 'wa ++p', {})
vim.api.nvim_create_user_command('Wq', 'wq ++p', {})
vim.api.nvim_create_user_command('WQ', 'wq ++p', {})

vim.api.nvim_create_user_command('TH', 'Telescope help_tags', {})
