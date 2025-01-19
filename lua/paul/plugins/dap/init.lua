return {
  'mfussenegger/nvim-dap',
  dependencies = {
    {
      'igorlfs/nvim-dap-view',
      opts = {},
    },
  },

  config = function()
    require('paul.plugins.dap.cpp')

    for _, group in pairs({
      'DapBreakpoint',
      'DapBreakpointCondition',
      'DapBreakpointRejected',
      'DapLogPoint',
    }) do
      vim.fn.sign_define(group, { text = '●', texthl = group })
    end

    vim.keymap.set('n', '<leader>dv', '<cmd>DapViewToggle<cr>', { desc = 'Dap View Toggle' })
    vim.keymap.set('n', '<leader>dd', '<cmd>DapContinue<cr>', { desc = 'Dap Continue' })
    vim.keymap.set('n', '<leader>bb', '<cmd>DapToggleBreakpoint<cr>', { desc = 'Dap Toggle Breakpoint' })
    vim.keymap.set('n', '<leader>bc', '<cmd>DapClearBreakpoints<cr>', { desc = 'Dap Clear Breakpoints' })
  end,
}
