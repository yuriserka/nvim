---@diagnostic disable-next-line: missing-fields
require 'nvim-treesitter.configs'.setup {
  ensure_installed = {
    "c",
    "lua",
    "vim",
    "vimdoc",
    "query",
    "json",
    "rust",
    "java",
    "javascript",
    "python",
    "cpp",
    "c_sharp",
    "dockerfile",
    "elixir",
    "erlang",
    "fish",
    "go",
    "haskell",
    "html",
    "sql",
    "typescript",
    "yaml",
    "zig"
  },

  auto_install = true,

  context_commentstring = {
    enable = true
  },

  highlight = {
    enable = true,
  },

  indent = {
    enable = true
  },

  playground = {
    enable = true
  },
}

