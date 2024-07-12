local lsp_clients = {
  'lua_ls',
  'jsonls',
  'bashls',
  'yamlls',
  'terraformls',
  'clangd',
  'csharp_ls',
  'elixirls',
--  'erlangls',
  'gradle_ls',
--  'hls',
--  'java_language_server',
  'pylsp',
  'rust_analyzer',
  'sqls',
  'tsserver',
  'zls',
}

require('mason').setup()
require('mason-lspconfig').setup({ ensure_installed = lsp_clients })

local function on_attach(fclient, bufnr)
  local opts = { noremap = true, silent = true }

  vim.keymap.set('n', '<C-x>', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
  vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  vim.keymap.set('n', 'ga', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)

  local gs = package.loaded.gitsigns
  gs.toggle_current_line_blame()
end

require('mason-lspconfig').setup_handlers {
  function(server_name)
    require('lspconfig')[server_name].setup {
      on_attach = on_attach
    }
  end
}

