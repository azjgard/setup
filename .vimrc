call plug#begin('~/.vim/plugged')

  " Easily align things
  Plug 'godlygeek/tabular'

  " JavaScript syntax
  Plug 'pangloss/vim-javascript'

  " JSON syntax
  Plug 'elzr/vim-json'

  " JS libraries syntax
  Plug 'othree/javascript-libraries-syntax.vim'

  " TernJS intellisense
  Plug 'marijnh/tern_for_vim', { 'do' : 'npm install' }

  " Go syntax
  Plug 'fatih/vim-go'

  " C++ syntax
  Plug 'octol/vim-cpp-enhanced-highlight'
  let g:cpp_class_scope_highlight = 1

  " YouCompleteMe
  Plug 'Valloric/YouCompleteMe'

  " NERD tree
  Plug 'scrooloose/nerdtree'
  let g:NERDTreeQuitOnOpen = 1 

  " Surround vim
  Plug 'tpope/vim-surround'

  " SASS syntax highlighting
  Plug 'cakebaker/scss-syntax.vim'

  " Pug syntax highlighting
  Plug 'digitaltoad/vim-pug'

call plug#end()

set tabstop=2
set shiftwidth=2
set expandtab

colorscheme angr

set number
set relativenumber

imap ;; <Esc>
map nn :NERDTree <Return>
