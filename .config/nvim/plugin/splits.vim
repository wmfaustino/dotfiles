" -----------------------------------------------------------------------------
" => splits
" -----------------------------------------------------------------------------
set splitbelow	                " a new window is put below the current one
set splitright	                " a new window is put right of the current one
set inccommand=split

" split navigation
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

" split resize 
nnoremap <C-Left> :vertical resize +3<CR>
nnoremap <C-Right> :vertical resize -3<CR>
nnoremap <C-Up> :resize +3<CR>
nnoremap <C-Down> :resize -3<CR>

nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>

" switch splits from vert to horiz or horiz to vert
map <leader>th wincmd t wincmd H
map <leader>tk wincmd t wincmd K

