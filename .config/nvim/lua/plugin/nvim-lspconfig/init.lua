-- -----------------------------------------------------------------------------
-- => nvim-lspconfig 
-- -----------------------------------------------------------------------------

local nvim_lsp = require('lspconfig')

-- set it up using the on_attach function
local on_attach = function(client, bufnr)
  require('completion').on_attach()
end

local servers = {'pyright', 'bashls', 'tsserver', 'vimls'}
  for _, lsp in ipairs(servers) do
    nvim_lsp[lsp].setup { on_attach = on_attach, }
end

--" npm i -g pyright
--" npm i -g vim-language-server
--" -----------------------------------------------------------------------------
