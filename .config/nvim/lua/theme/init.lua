-- -----------------------------------------------------------------------------
-- => theme 
-- -----------------------------------------------------------------------------

Option.set({
    { 'global', 't_Co', '256', {} },
    { 'global', 'background', 'dark', {} },

    -- => lightline
    -- INSERT -- is unnecessary anymore because the mode information is displayed in the statusline.
    -- to get rid of it
    { 'global', 'showmode', false, {} }
})

vim.cmd('colorscheme minimalist')

Var.set({
    { 'global', 'lightline', { ['colorscheme'] = 'material' }  }
})
--" => lightline 

-- let g:lightline = {
--       \ 'colorscheme': 'material',
--       \ }
--" -----------------------------------------------------------------------------
