-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim
require "lazy".setup {
  -- Theme
  {
    "olimorris/onedarkpro.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "sharpchen/Eva-Theme.nvim",
    lazy = false,
    priority = 100,
  },
  { 'nvim-tree/nvim-web-devicons',       lazy = true },
  { 'nvim-lua/plenary.nvim',             lazy = false },

  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
  },

  {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },

  -- LSP
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      { 'williamboman/mason.nvim', config = true }, -- NOTE: Must be loaded before dependants
      'williamboman/mason-lspconfig.nvim',
      'WhoIsSethDaniel/mason-tool-installer.nvim',
      { 'j-hui/fidget.nvim', opts = {} },
      { 'folke/neodev.nvim' },
    }
  },
  {
    'nvim-java/nvim-java',
    dependencies = {
      'neovim/nvim-lspconfig',
    }
  },

  -- Editor tools
  { "windwp/nvim-autopairs" },
  { 'kyazdani42/nvim-tree.lua',       lazy = false },  -- File tree
  { 'tpope/vim-fugitive' },                            -- Git interface
  { 'lewis6991/gitsigns.nvim' },                       -- Git utilities
  { "tpope/vim-commentary" },
  { "tpope/vim-surround" },
  { "nvim-pack/nvim-spectre" },
  { 'nvim-lualine/lualine.nvim' }, -- Statusline
  { 'RRethy/vim-illuminate' }, -- Highlight exact same words on buffer
  { "lukas-reineke/indent-blankline.nvim" },
  {
    'folke/trouble.nvim',
    keys = {
      {
        "<leader>tt",
        "<cmd>Trouble diagnostics toggle<cr>",
        desc = "Diagnostics (Trouble)",
      },
    },
  },

  -- Debugging
  {
    "rcarriga/nvim-dap-ui",
    dependencies = {
      "mfussenegger/nvim-dap",
      "nvim-neotest/nvim-nio"
    },
  },
  {
    "mfussenegger/nvim-dap-python",
    dependencies = {
      "mfussenegger/nvim-dap",
    },
  },

  -- Terminal
  {'akinsho/toggleterm.nvim', version = "*", config = true},

  -- Auto Completion
  { 'github/copilot.vim' },
  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      'neovim/nvim-lspconfig',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
      'hrsh7th/cmp-nvim-lua',
    }
  },
}

