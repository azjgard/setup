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
" - [X] A nice file browser to see folder structure (especially for trying
"   to resolve paths to components, etc.). customizing NERDTree.
"       Resolution: Added icons and coloring to NERDTree, which results
"       in a much more clean file browsing experience that I'm perfectly
"       happy with.
"
" - [X] JSX syntax highlighting
" - [X] Emmett for writing JSX quickly
"       Resolution: JavaScript highlighting I already had, and it just took
"       one extra plugin to get correct syntax for the JSX. I had to add
"       a setting to make sure that the plugin would also highlight
"       JSX in .js extensions, not just .jsx. Emmett is working
"       like a charm as well for writing JSX, although I have to
"       remember to hit , after pressing the leader key for expanding
"       the Emmett snippet.
"
" - [X] Auto-formatting JavaScript and JSX on save (Prettier or Beautify)
"       Resolution: Prettier is looking good, just need to remember
"       to add // @format to the tops of the files. In VS Code, I was
"       actually using Beautify instead of Prettier.
"
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

" set lazyredraw

"swapfiles are annoying and I save so frequently
"that I don't need them
set noswapfile 

"NVIM only; change block to line in insert mode
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

"highlight current line
set cursorline 

"column 80 needs color to give us an overflow indicator
set colorcolumn=80

set number 
set relativenumber 
set numberwidth=3

set tabstop=2 
set shiftwidth=2
set expandtab

set smartindent
set cindent

set ignorecase 
set smartcase 

set hidden

set showmatch
set incsearch
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
    " Plug 'benmills/vimux'

    " Vue
    " Plug 'posva/vim-vue'

    " Pug
    " Plug 'digitaltoad/vim-pug'

    " CSS
    Plug 'cakebaker/scss-syntax.vim'
    Plug 'hail2u/vim-css3-syntax'
    Plug 'ap/vim-css-color' "preview hex colors in CSS files

    " HTML
    Plug 'othree/html5.vim'
    Plug 'dNitro/vim-pug-complete'
    Plug 'Valloric/MatchTagAlways' "show matching HTML tags

    " Javascript
    Plug 'pangloss/vim-javascript'
    Plug 'mxw/vim-jsx'
    let g:jsx_ext_required = 0

    " C++
    " Plug 'octol/vim-cpp-enhanced-highlight'

    " Markdown
    " Plug 'plasticboy/vim-markdown'
    " let g:vim_markdown_new_list_item_indent = 0
    " let g:vim_markdown_folding_disabled = 1

    " Plug 'Yggdroot/indentLine' "show indentation symbols
    " let g:indentLine_color_term = 239
    " let g:indentLine_char = '¦'

    " Plug 'ap/vim-buftabline' "show open buffers on tabline
    " hi BufTabLineCurrent ctermfg=blue


" Functionality extensions
    Plug 'w0rp/ale' "asynchronous linting (thanks neovim)
    let g:ale_sign_column_always=1
    let g:ale_sign_error = '>>'
    let g:ale_sign_warning = '-|'
    let g:ale_linters = {
          \'javascript': ['eslint'],
          \'javascript.jsx': ['eslint']
          \}

    Plug 'godlygeek/tabular' "line stuff up

    " "kill buffer without killing window using :BD
    Plug 'qpkorr/vim-bufkill' 

    Plug 'eapache/auto-pairs' "auto-close pairs

    Plug 'tpope/vim-commentary' "quick commenting


    " "snippets
    Plug 'MarcWeber/vim-addon-mw-utils'
    Plug 'tomtom/tlib_vim'
    Plug 'garbas/vim-snipmate'
    Plug 'honza/vim-snippets'


    " Plug 'JamshedVesuna/vim-markdown-preview'

    Plug 'scrooloose/nerdtree'
    map <C-n> :NERDTreeToggle<CR>

    Plug 'ryanoasis/vim-devicons'
    let g:WebDevIconsUnicodeDecorateFolderNodes = 1
    let g:DevIconsEnableFoldersOpenClose = 1

    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

    " Not worth the performance hit
    " Plug 'mattn/emmet-vim'
    " let g:user_emmet_leader_key='<C-m>'
    " let g:user_emmet_settings = {
    "   \  'javascript.jsx' : {
    "     \      'extends' : 'jsx',
    "     \  },
    "   \}

    Plug 'prettier/vim-prettier', { 'do': 'npm install' }
    let g:prettier#autoformat = 0 " performance suffers without this
    let g:prettier#exec_cmd_async = 1
    nnoremap <leader>p :PrettierAsync<cr>

call plug#end()

" nnoremap <C-]> :cprevious<cr>
" nnoremap <C-[> :cnext<cr>
