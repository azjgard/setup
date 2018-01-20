"  =============================
"  ---- Table of Contents ------
"  =============================
"  General Mappings - @gmappings
"  Leader Mappings - @lmappings
"  General Settings - @gsettings
"  Plugins - @plugins
"  =============================
"
"
" WISHLIST:
" I've been using VS Code for awhile since I've mostly been working
" with codebases that I'm not familiar with. Honestly, while I love VS
" Code (with vim keybindings of course), I miss the native Vim experience.
" However, there are a couple of things that I NEED to migrate from my
" current VS Code setup to get everything up to speed:
"
" - [  ] A nice file browser to see folder structure (especially for trying
"   to resolve paths to components, etc.). customizing NERDTree.
" - [  ] Emmett for writing JSX quickly
" - [  ] Auto-formatting JavaScript and JSX on save (Prettier or Beautify)
" - [  ] Asynchronous ESLint linting



"  =============================
"  ----- General Mappings  -----
"  =============================
"  @gmappings

" Quick save with Ctrl+S
nnoremap <C-s> :w<cr>

" Move vertically by visual line
nnoremap j gj
nnoremap k gk

" Move lines up and down
nnoremap _ ddkP
nnoremap - ddp

" Ctrl + J and Ctrl + K will navigate the deoplete menu
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"

nmap <silent><esc> :nohlsearch<cr>



"  =============================
"  ----- General Settings ------
"  =============================
"  @gsettings

colorscheme atom-dark-256

syntax on
syntax enable
filetype plugin indent on

set lazyredraw

"swapfiles are annoying and I save so frequently
"that I don't need them
set noswapfile 

"NVIM only; change block to line in insert mode
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

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

hi! Note ctermfg=darkyellow
match Note /NOTE:/


"  =============================
"  ------ Leader Mappings ------
"  =============================
"  @lmappings

let mapleader=","

"quick navigate open buffers
nnoremap <leader>t :bnext<cr>
nnoremap <leader>T :bprevious<cr>

"sudo save
nnoremap <leader>ss :w !sudo tee %<cr><cr>

"quick source .vimrc file
nnoremap <leader>sv :source ~/.vimrc<cr>

"quick install packages
nnoremap <leader>pi :PlugInstall<cr>

"quick split management
nnoremap <leader>wv :vsplit<cr>
nnoremap <leader>ws :split<cr>
nnoremap <leader>wc :close<cr>

"quick alignment
nnoremap <leader>= :Tabularize /^[^=]*\zs=<cr>
nnoremap <leader>: :Tabularize /:<cr>
nnoremap <leader><leader> :Tabularize /

"close buffer without closing window
nnoremap <leader>x :BD<cr>
"force above command
nnoremap <leader>X :BD!<cr> 

"open current file in firefox
nnoremap <leader>b !firefox % &<cr><cr>

nnoremap <leader>n :VimuxPromptCommand<cr>
nnoremap <leader>l :VimuxRunLastCommand<cr>



"  =============================
"  --------- Plugins ----------- 
"  =============================
"  @plugins

call plug#begin('~/setup/vim/plugged')
" Syntax enhancement and visual alterations 

    " Vimux
    Plug 'benmills/vimux'

    " Vue
    Plug 'posva/vim-vue'

    " Pug
    Plug 'digitaltoad/vim-pug'

    " CSS
    Plug 'cakebaker/scss-syntax.vim'
    Plug 'hail2u/vim-css3-syntax'
    Plug 'ap/vim-css-color' "preview hex colors in CSS files

    " HTML
    Plug 'othree/html5.vim'
    Plug 'dNitro/vim-pug-complete'
    Plug 'Valloric/MatchTagAlways' "show matching HTML tags

    " Javascript
    " Plug 'jelera/vim-javascript-syntax'
    Plug 'pangloss/vim-javascript'
    Plug 'mxw/vim-jsx'

    " C++
    Plug 'octol/vim-cpp-enhanced-highlight'

    " Markdown
    Plug 'plasticboy/vim-markdown'
    let g:vim_markdown_new_list_item_indent = 0
    let g:vim_markdown_folding_disabled = 1

    Plug 'Yggdroot/indentLine' "show indentation symbols
    let g:indentLine_color_term = 239
    let g:indentLine_char = '¦'

    Plug 'ap/vim-buftabline' "show open buffers on tabline
    hi BufTabLineCurrent ctermfg=blue


" Functionality extensions
    " Plug 'w0rp/ale' "asynchronous linting (thanks neovim)
    " let g:ale_sign_column_always=1
    " let g:ale_sign_error = '>>'
    " let g:ale_sign_warning = '-|'

    Plug 'godlygeek/tabular' "line stuff up

    "kill buffer without killing window using :BD
    Plug 'qpkorr/vim-bufkill' 

    Plug 'eapache/auto-pairs' "auto-close pairs

    "intellisense
    " Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    " let g:deoplete#enable_at_startup=1
    " let g:deoplete#enable_smart_case=1

    Plug 'tpope/vim-commentary' "quick commenting

    " Plug 'roxma/nvim-completion-manager'

    "snippets
    Plug 'MarcWeber/vim-addon-mw-utils'
    Plug 'tomtom/tlib_vim'
    Plug 'garbas/vim-snipmate'
    Plug 'honza/vim-snippets'


    Plug 'JamshedVesuna/vim-markdown-preview'

    Plug 'scrooloose/nerdtree'
    map <C-n> :NERDTreeToggle<CR>

call plug#end()

nnoremap <C-]> :cprevious<cr>
nnoremap <C-[> :cnext<cr>
