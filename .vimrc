"""""""""""""""""""""""""""""""""
" General
"""""""""""""""""""""""""""""""""
set nocompatible
set modelines=0
filetype plugin indent on

"""""""""""""""""""""""""""""""""
" Key Mappings
"""""""""""""""""""""""""""""""""
nnoremap ; :

let mapleader = ","

map <leader>n :NERDTreeToggle<CR>

map <leader>. :vertical resize +5<Return>
map <leader>, :vertical resize -5<Return>

map <leader>t :bnext<Return>
map <leader>T :bprevious<Return>
map <leader>x :bd<Return>

map <leader>= :Tabularize /=<Return>
map <leader>: :Tabularize /:<Return>

"let g:ycm_key_list_select_completion = ['<c-j>', '<Down>']
"let g:ycm_key_list_previous = ['<c-k>', '<Down>']

" Theme and UI
"""""""""""""""""""""""""""""""""
colorscheme atom-dark-256

" installing qt 5 for this
set guifont=Monoid\ Retina\ Nerd\ Font\ Complete\ Mono\ 12
set cursorline

set relativenumber number
set visualbell
set encoding=utf-8

set wrap
set textwidth=85
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround
set showmatch

syntax on

set hidden

"""""""""""""""""""""""""""""""""
" Plugins
"""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

"""""""""""""""""""""""
"" GUI / UI Plugins
"""""""""""""""""""""""
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#tabline#left_sep = ' '
  let g:airline#extensions#tabline#left_alt_sep = '|'
  let g:airline_powerline_fonts = 1

  Plug 'scrooloose/nerdtree'
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
  autocmd VimEnter * NERDTree
  autocmd! VimEnter * NERDTree
  let NERDTreeIgnore = ['Makefile', '\.o$']

  Plug 'ryanoasis/vim-devicons'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

  " Syntax highlighting
  Plug 'octol/vim-cpp-enhanced-highlight'
  Plug 'jelera/vim-javascript-syntax'

"""""""""""""""""""""""
" Code Completion
"""""""""""""""""""""""
"  Plug 'Valloric/YouCompleteMe'
  Plug 'rdnetto/YCM-Generator'

"""""""""""""""""""""""
" Code Alignment
"""""""""""""""""""""""
  Plug 'godlygeek/tabular'

  
"""""""""""""""""""""""
" Code Snippets
"""""""""""""""""""""""
  Plug 'marcweber/vim-addon-mw-utils'
  Plug 'tomtom/tlib_vim'
  Plug 'garbas/vim-snipmate'
  Plug 'honza/vim-snippets'

"""""""""""""""""""""""
" Code Linting
"""""""""""""""""""""""
  Plug 'vim-syntastic/syntastic'

call plug#end()

  
