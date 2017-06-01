" /vim/general-settings.vim
" ------------------------ "
" General Settings
" ------------------------ "

syntax on
syntax enable
filetype plugin indent on

set lazyredraw "only redraw when necessary

"swapfiles are annoying and I save so frequently
"that I don't need them
set noswapfile 

"NVIM only; change block to line in insert mode
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

colorscheme atom-dark-256

"highlight current line
set cursorline 

"column 80 needs color to give us an overflow indicator
set colorcolumn=80

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

" -------------------- "
" Highlight groups "
" -------------------- "

"color column
hi ColorColumn ctermbg=white
hi BufTabLineCurrent ctermfg=40 ctermbg=237

"ALE linter
hi ALEErrorSign ctermfg=124 ctermbg=237
hi ALEWarningSign ctermfg=220 ctermbg=237

"line number
hi CursorLineNR ctermfg=40 ctermbg=237

