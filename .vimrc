" Appearance {{{
colorscheme atom-dark-256
"show line numbers
set nu rnu
set numberwidth=3
set cursorline
" }}}
"
" General Settings {{{
syntax on
syntax enable

set tabstop=2
set expandtab
set shiftwidth=2

"automatically indent
set smartindent
set cindent

"case insensitive search
set ignorecase
set smartcase

set hidden
set showmatch

" error bells
set noerrorbells
set visualbell
set tm=500

filetype plugin indent on

set cmdheight=1             " command bar height
set title                   " set terminal title
" }}}

" Plugins {{{
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
let g:vim_markdown_folding_disabled = 1

Plug 'dkprice/vim-easygrep'
Plug 'ap/vim-buftabline'

Plug 'godlygeek/tabular'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'

Plug 'qpkorr/vim-bufkill'

Plug 'tpope/vim-commentary'
Plug 'Valloric/MatchTagAlways'

Plug 'mileszs/ack.vim'
Plug 'inside/vim-grep-operator'

Plug 'nathanaelkane/vim-indent-guides'

call plug#end()
" }}}

" Auto Commands {{{
" auto-indent html on open and before save
" autocmd BufWritePre,BufRead *.html :normal gg=G

" text formatting and spellchecking
autocmd BufRead,BufNewFile *.md,*.txt setlocal textwidth=80
autocmd BufRead,BufNewFile *.md,*.txt setlocal wrap
autocmd BufRead,BufNewFile *.md,*.txt setlocal spell spelllang=en_us

" TODO FIXME: implement vimux autocmds for javascript files vs. cpp files
nnoremap <leader>r :VimuxRunCommand("clear; rm pathfinder; make; ./pathfinder")<cr>
nnoremap <leader>R :nnoremap <leader>r :VimuxRunCommand("

" highlight OverLength ctermbg=red ctermfg=white guibg=#592929
" match OverLength /\%81v.\+/

"autocmd BufNewFile * :write

" Vimscript file settings {{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

" }}}

" Key bindings {{{
"
"" Basic remappings
nnoremap ; :
nnoremap <C-s> :w<cr>

" Operator Bindings {{{
onoremap p i)
onoremap q i"

onoremap p :<c-u>normal! f(vi(<cr>
onoremap P :<c-u>normal! F(vi(<cr>
onoremap q :<c-u>normal! f"vi"<cr>
onoremap Q :<c-u>normal! F"vi"<cr>
onoremap b :<c-u>normal! f[vi[<cr>
onoremap B :<c-u>normal! F[vi[<cr>
" }}}

" move lines up and down
noremap _ ddkP
noremap - ddp

" convert text to uppercase in visual mode
vnoremap \ U

" convert word to uppercase while in insert mode
inoremap <c-u> <esc>viwUea

" strong move
nnoremap L $
nnoremap H 0

" Insert mode abbreviations
":set iskeyword? determines when to replace the abbreviations
" (not just after a space)
iabbrev adn and

nnoremap <esc> :noh<return><esc>

nnoremap j gj
nnoremap k gk

let mapleader=","
let maplocalleader="\\"

" session management
nnoremap <leader>ss :source ~/.config/nvim/sessions/
nnoremap <leader>sm :mks ~/.config/nvim/sessions/

" Easy alignment!
nnoremap <leader>= :Tabularize /=<cr>
nnoremap <leader>: :Tabularize /:<cr>
nnoremap <leader>( :Tabularize /(<cr>
nnoremap <leader>{ :Tabularize /{<cr>
nnoremap <leader>} :Tabularize /}<cr>
nnoremap <leader><leader> :Tabularize /

" Turn the file browser on and off.
map <leader>n :NERDTreeToggle<CR>

" --- Internal Navigation ---
" Create vim splits quickly!
nnoremap <leader>wv :vsplit<cr>
nnoremap <leader>wh :split<cr>
nnoremap <leader>wc :close<cr>
" Navigate quickly between vim splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" easily navigate between buffers
nnoremap <leader>t :bnext<cr>
nnoremap <leader>T :bprevious<cr>
nnoremap <leader>x :BD<cr>
nnoremap <leader>X :bd<cr>
" --------------------------

" ----- Configuration -------
" Quick installation and removal of plugins.
nnoremap <leader>pc :PlugClean<cr>
nnoremap <leader>pi :PlugInstall<cr>
" easily configure .vimrc
nnoremap <leader>ev :edit ~/.vimrc<cr>
nnoremap <leader>sv :source ~/.vimrc<cr>
" --------------------------

" --- Vimux ---
" Send commands to tmux from inside of vim.
nnoremap <leader>r :VimuxRunCommand("clear; rm bst; make; ./bst")<cr>
nnoremap <leader>R :nnoremap <leader>r :VimuxRunCommand("
nnoremap <leader>q :VimuxPromptCommand<cr>

" Open the current file in the browser.
nnoremap <leader>b :!firefox % &<cr><cr>
" }}}

" NVIM specific {{{
:let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
" }}}

