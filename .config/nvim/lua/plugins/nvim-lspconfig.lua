--[[
=> nvim-lspconfig 
--]]
--" Set completeopt to have a better completion experience
--set completeopt=menuone,noinsert,noselect

local nvim_lsp = require('lspconfig')

local on_attach = function(client, bufnr)
  require('completion').on_attach()
end

-- vim.o["LanguageClient_serverCommands"] = {
--     lua = 'lua-lsp'
-- }

-- vim.o["LanguageClient_autoStart"] = 1

local servers = {'pyright', 'bashls', 'tsserver', 'vimls'}
  for _, lsp in ipairs(servers) do
    nvim_lsp[lsp].setup { on_attach = on_attach, }
end

--" npm i -g pyright
--" npm i -g vim-language-server
--" -----------------------------------------------------------------------------

