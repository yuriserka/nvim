vim.api.nvim_set_keymap('n', '<leader>gs', ":Git <CR><C-w>10-", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>gl', ":Git log --graph --oneline --decorate<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>gb', ":Git blame <CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ph', ":Git push <CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'dh', ":diffget //2<CR>", { noremap = true }) -- Gets left diff on Merge conflict
vim.api.nvim_set_keymap('n', 'dl', ":diffget //3<CR>", { noremap = true }) -- Gets rigth diff on Merge conflict
vim.api.nvim_set_keymap('n', '<leader>gx', ":Git restore .<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>pl', ":Git pull --rebase<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ft', ":Git fetch --all<CR>", { noremap = true, silent = true })

