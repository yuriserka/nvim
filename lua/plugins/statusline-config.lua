local trouble = require("trouble")
local symbols = trouble.statusline({
  mode = "lsp_document_symbols",
  groups = {},
  title = false,
  filter = { range = true },
  format = "{kind_icon}{symbol.name:Normal}",
  hl_group = "lualine_c_normal",
})

require('lualine').setup({
  sections = {
    lualine_c = {
      {
        'filename',
        file_status = true,
        path = 0,
      },
      {
        symbols.get,
        cond = symbols.has,
      },
    }
  },
})


