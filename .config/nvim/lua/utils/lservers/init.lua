-- -----------------------------------------------------------------------------
-- => Language Servers 
-- -----------------------------------------------------------------------------
Language = {}

Language.servers = {'pyright', 'bashls', 'tsserver', 'vimls'}

Language.on_attach = function(on_attach)
    for _, lsp in ipairs(Language.servers) do
      require('lspconfig')[lsp].setup { on_attach = on_attach }
    end
end

Language.treesitter = {python, bash, javascript, typescript, regex}

-- npm i -g pyright
-- npm i -g bash-language-server
-- npm install -g typescript typescript-language-server
-- npm i -g vim-language-server
-- TSInstall
--  python
--  bash
--  javascript
--  typescript
--
--  regex
-- -----------------------------------------------------------------------------
