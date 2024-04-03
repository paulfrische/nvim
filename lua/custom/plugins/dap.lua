return {
  enabled = false,
  'mfussenegger/nvim-dap',
  dependencies = {
    'rcarriga/nvim-dap-ui',
  },
  config = function()
    local dap, dapui = require('dap'), require('dapui')

    dap.listeners.before.attach.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated.dapui_config = function()
      dapui.close()
    end
    dap.listeners.before.event_exited.dapui_config = function()
      dapui.close()
    end

    vim.keymap.set('n', '<leader>dt', dap.toggle_breakpoint, {})
    vim.keymap.set('n', '<leader>dc', dap.continue, {})
    vim.keymap.set('n', '<leader>dx', dap.terminate, {})
    vim.keymap.set('n', '<leader>do', dap.step_over, {})

    vim.keymap.set('n', '<F3>', dap.toggle_breakpoint, {})
    vim.keymap.set('n', '<F5>', dap.continue, {})
    vim.keymap.set('n', '<F10>', dap.terminate, {})
    vim.keymap.set('n', '<F8>', dap.step_over, {})

    dap.adapters.gdb = {
      type = 'executable',
      command = 'gdb',
      args = { '-i', 'dap' },
    }

    dap.configurations.rust = {
      program = function()
        local exes = vim.system('fd . "./target/debug" -at x -d 1')
      end,
    }
  end,
}
