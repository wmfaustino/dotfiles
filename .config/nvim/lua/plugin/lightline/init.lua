-- -----------------------------------------------------------------------------
-- => lightline 
-- -----------------------------------------------------------------------------

Option.set({
    -- INSERT -- is unnecessary anymore because the mode information is displayed in the statusline.
    -- to get rid of it
    { 'global', 'showmode', false, {} }
})

Var.set({

    { 'global', 'lightline', { ['colorscheme'] = 'material' }  },
})

-- -----------------------------------------------------------------------------
-- => lightline-ale
-- -----------------------------------------------------------------------------
-- Var.set({

--     { 'global', 'lightline', { ['component_expand'] = {
--         ['linter_checking'] = 'lightline#ale#checking',
--         ['linter_infos'] = 'lightline#ale#infos',
--         ['linter_warning'] = 'lightline#ale#warning',
--         ['linter_errors'] = 'lightline#ale#errors',
--         ['linter_ok'] = 'lightline#ale#ok'
--         }
--     }},

--     { 'global', 'lightline', { ['component_type'] = {
--         ['linter_checking'] = 'right',
--         ['linter_infos'] = 'right',
--         ['linter_warning'] = 'warning',
--         ['linter_errors'] = 'error',
--         ['linter_ok'] = 'right'
--         }
--     }},

--     { 'global', 'lightline', { ['active'] = {
--         ['right'] = 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_infos', 'linter_ok'
--         }
--     }}
-- })
