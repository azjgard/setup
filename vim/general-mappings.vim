" ; --> :
nnoremap ; :

"quick save with Ctrl+S
nnoremap <C-s> :w<cr>

"move vertically by visual line
nnoremap j gj
nnoremap k gk

"move lines up and down
noremap _ ddkP
noremap - ddp

" Ctrl + J and Ctrl + K will navigate the deoplete menu
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"
