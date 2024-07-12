require('gitsigns').setup()

vim.api.nvim_set_keymap('n', '<leader>hp', ":Gitsigns preview_hunk<CR>", {})
vim.api.nvim_set_keymap('n', '<leader>hu', ":Gitsigns reset_hunk<CR>", {})
vim.api.nvim_set_keymap('n', '<leader>hb', ":Gitsigns blame_line --full<CR>", {})

