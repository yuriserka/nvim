local ntree_view = require('nvim-tree.view')

require('nvim-tree').setup {
  filters = {
    dotfiles = false
  },
  view = {
    width = 50,
    preserve_window_proportions = false,
    side = "right",
  },
  update_focused_file = {
    enable = true
  },
  actions = {
    open_file = {
      resize_window = false,
    }
  },
  renderer = {
    indent_width = 1,
    indent_markers = {
      enable = true,
    },
  }
}

-- Open filetree
vim.api.nvim_set_keymap('n', '<leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>tr', ntree_view.resize, { noremap = true, silent = true })

