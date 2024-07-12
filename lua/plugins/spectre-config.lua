local spectre = require('spectre')

spectre.setup({
  live_update = true,
  default = {
    find = {
      cmd = "rg",
      options = {},
    }
  }
})

vim.keymap.set('n', '<leader>P', spectre.open, {})
