" /vim/leader-mappings.vim
" ------------------------ "
" Leader Mappings
" ------------------------ "

let mapleader=","

"quick navigate open buffers
nnoremap <leader>t :bnext<cr>
nnoremap <leader>T :bprevious<cr>

"quick source .vimrc file
nnoremap <leader>sv :source ~/.vimrc<cr>

"quick save with Ctrl+S
nnoremap <C-s> :w<cr>
