" /vim/general-settings.vim
" ------------------------ "
" General Settings
" ------------------------ "

syntax on
syntax enable
filetype plugin indent on

set lazyredraw "only redraw when necessary

"NVIM only; change block to line in insert mode
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

colorscheme atom-dark-256

"highlight current line
set cursorline 

"highlight column 80
hi ColorColumn ctermbg=blue 

set number "current line # is absolute
set relativenumber "non-current lines are relative
set numberwidth=3 "small line number column

set tabstop=2 "tab width of 2
set shiftwidth=2 ">> command width of 2
set expandtab "tabs -> spaces

"automatically indent code
set smartindent
set cindent

set ignorecase "case-insensitive by default
set smartcase "case-sensitive if capital letters in search

set hidden "allow hidden buffers

set showmatch "highlight search matches
set incsearch "highlight search matches incrementally as you type
set hlsearch

"disable annoying error sounds
set noerrorbells
set visualbell
set tm=500
