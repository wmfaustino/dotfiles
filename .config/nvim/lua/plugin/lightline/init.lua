-- -----------------------------------------------------------------------------
-- => lightline 
-- -----------------------------------------------------------------------------

Option.set({
    -- INSERT -- is unnecessary anymore because the mode information is displayed in the statusline.
    -- to get rid of it
    { 'global', 'showmode', false, {} }
})

Var.set({
    { 'global', 'lightline', { ['colorscheme'] = 'material' }  }
})
--" => lightline 

-- let g:lightline = {
--       \ 'colorscheme': 'material',
--       \ }
