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

"quick install packages
nnoremap <leader>pi :PlugInstall<cr>

"quick split management
nnoremap <leader>wv :vsplit<cr>
nnoremap <leader>ws :split<cr>
nnoremap <leader>wc :close<cr>

"quick alignment
nnoremap <leader>= :Tabularize /=<cr>
nnoremap <leader>: :Tabularize /:<cr>
nnoremap <leader><leader> :Tabularize /

"close buffer without closing window
nnoremap <leader>x :BD<cr>
"force above command
nnoremap <leader>X :BD!<cr> 
