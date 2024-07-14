local gitsigns = require('gitsigns')

gitsigns.setup({
  current_line_blame = true,
  current_line_blame_opts = {
    delay = 500,
  },
})

vim.keymap.set('n', '<leader>hp', gitsigns.preview_hunk, {})
vim.keymap.set('n', '<leader>hr', gitsigns.reset_hunk, {})
vim.keymap.set('n', '<leader>hb', gitsigns.blame_line, {})
