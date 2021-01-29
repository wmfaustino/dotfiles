" -----------------------------------------------------------------------------
" => themeing 
" -----------------------------------------------------------------------------
if !has('gui_running')
  set t_Co=256
endif

" => color 
set background=dark
colorscheme minimalist

" => lightline 
" -- INSERT -- is unnecessary anymore because the mode information is
"  displayed in the statusline.
"  to get rid of it
set noshowmode

 let g:lightline = {
       \ 'colorscheme': 'material',
       \ }
" -----------------------------------------------------------------------------
