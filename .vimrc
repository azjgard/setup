colorscheme atom-dark-256
set cursorline

"" Basic remappings
nnoremap ; :
nnoremap <C-s> :w<cr>

set tabstop=2
set expandtab
set shiftwidth=2

"automatically indent
set smartindent
set cindent

"show line numbers
set relativenumber

"case insensitive search
set ignorecase
set smartcase

set hidden
set showmatch

" error bells
set noerrorbells
set visualbell
set tm=500

syntax on
syntax enable

filetype plugin indent on

set cmdheight=1             " command bar height
set title                   " set terminal title

" //////////////////////////////// "
" Plugins
" //////////////////////////////// "

call plug#begin('~/.local/share/nvim/plugged')

Plug 'ctrlpvim/ctrlp.vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_theme='papercolor'
let g:airline#extensions#tabline#enabled = 1

" I LOVE YU VIMuxk
Plug 'benmills/vimux'
let g:VimuxOrientation = "v"

Plug 'w0rp/ale'
let g:ale_sign_column_always=1
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'

Plug 'jiangmiao/auto-pairs'

Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'

" //////////////////////////////// "
" Syntax
" //////////////////////////////// "
Plug 'cakebaker/scss-syntax.vim'
Plug 'othree/html5.vim'
Plug 'dNitro/vim-pug-complete'
Plug 'digitaltoad/vim-pug'


Plug 'jelera/vim-javascript-syntax'
Plug 'octol/vim-cpp-enhanced-highlight'

Plug 'plasticboy/vim-markdown'
let g:vim_markdown_new_list_item_indent = 0

Plug 'dkprice/vim-easygrep'
Plug 'ap/vim-buftabline'

Plug 'godlygeek/tabular'

call plug#end()

" //////////////////////////////// "
" Key Bindings
" //////////////////////////////// "

nnoremap <esc> :noh<return><esc>

nnoremap j gj
nnoremap k gk

let mapleader=","

" easily configure .vimrc
nnoremap <leader>ev :edit ~/.vimrc<cr>
nnoremap <leader>sv :source ~/.vimrc<cr>

" session management
nnoremap <leader>ss :source ~/.config/nvim/sessions/
nnoremap <leader>sm :mks ~/.config/nvim/sessions/

" aligning items
nnoremap <leader>= :Tabularize /=<cr>
nnoremap <leader>: :Tabularize /:<cr>
nnoremap <leader>( :Tabularize /(<cr>

" easily navigate between buffers
nnoremap <leader>t :bnext<cr>
nnoremap <leader>T :bprevious<cr>
nnoremap <leader>x :bd<cr>

" easily control splits
nnoremap <leader>wv :vsplit<cr>
nnoremap <leader>wh :split<cr>
nnoremap <leader>wc :close<cr>

" easily navigate between windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" plug stuff
nnoremap <leader>pc :PlugClean<cr>
nnoremap <leader>pi :PlugInstall<cr>

" interact with tmux from vim
nnoremap <leader>r :VimuxRunCommand("rm output; make; ./output")<cr>
nnoremap <leader>R :VimuxRunCommand("./output")<cr>

nnoremap s <C-w><C-w>

:let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
