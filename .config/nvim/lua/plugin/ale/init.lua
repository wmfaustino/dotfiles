
local linters = {
    { [ 'javascript' ] = { 'eslint' }},
    { [ 'sh' ] = { 'bashate', 'language_server', 'shell', 'shellcheck' }}
}

Var.set({
    -- Only run linters named in ale_linters settings.
    { 'global', 'ale_linters_explicit', 1 },
    { 'buffer', 'ale_linters', linters }
})
