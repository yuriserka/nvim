local toggleterm = require("toggleterm")

toggleterm.setup({
  open_mapping = [[<C-\>]], -- Same to hide and persist session
  direction = 'float',
  float_opts = {
    border = 'curved'
  }
})

-- Remap exit terminal mode hotkey
vim.api.nvim_set_keymap('t', '<C-d>', '<C-\\><C-n>', { noremap = true, silent = true })
