local dapui = require("dapui")
dapui.setup({})

vim.keymap.set('n', '<leader>td', dapui.toggle, {})

local dap = require('dap')
vim.keymap.set('n', '<leader>bp', dap.toggle_breakpoint, {})
vim.keymap.set('n', '<leader>si', dap.step_into, {})
vim.keymap.set('n', '<leader>so', dap.step_over, {})
vim.keymap.set('n', '<leader>ds', dap.continue, {})
vim.keymap.set('n', '<leader>df', dap.terminate, {})
