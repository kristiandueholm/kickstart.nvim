return {
  {
    'mfussenegger/nvim-dap',
    dependencies = {
      'leoluz/nvim-dap-go', -- Go adapter for DAP
      'rcarriga/nvim-dap-ui',
      'nvim-neotest/nvim-nio',
    },
    config = function()
      local dap = require 'dap'
      local dapgo = require 'dap-go'
      local ui = require 'dapui'

      -- Setup dap-go with defaults
      dapgo.setup()
      ui.setup()

      -- Keymaps for DAP
      local map = vim.keymap.set
      map('n', '<leader>db', dap.toggle_breakpoint, { desc = 'Toggle [D]AP [B]reakpoint' })
      map('n', '<leader>dc', dap.continue, { desc = 'DAP [C]ontinue' })
      map('n', '<leader>di', dap.step_into, { desc = 'DAP Step [I]nto' })
      map('n', '<leader>do', dap.step_over, { desc = 'DAP Step [O]ver' })
      map('n', '<leader>dO', dap.step_out, { desc = 'DAP Step [O]ut' })
      map('n', '<leader>dr', dap.repl.toggle, { desc = 'DAP [R]epl toggle' })
      map('n', '<leader>dl', dap.run_last, { desc = 'DAP Run [L]ast' })
      map('n', '<leader>dt', dap.terminate, { desc = 'DAP [T]erminate' })
      map('n', '<leader>du', ui.toggle, { desc = 'Toggle DAP [u]i' })
    end,
  },
}
