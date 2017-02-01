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
set relativenumber number

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

Plug 'scrooloose/nerdcommenter'

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
Plug 'easymotion/vim-easymotion'

Plug 'lambdatoast/elm.vim'


Plug 'othree/jspc.vim'
Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
let g:deoplete#enable_at_startup = 1
if !exists('g:deoplete#omni#input_patterns')
  let g:deoplete#omni#input_patterns = {}
endif

" let g:deoplete#disable_auto_complete = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" omnifuncs
augroup omnifuncs
  autocmd!
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
augroup end

" tern
if exists('g:plugs["tern_for_vim"]')
  let g:tern_show_argument_hints = 'on_hold'
  let g:tern_show_signature_in_pum = 1
  autocmd FileType javascript setlocal omnifunc=tern#Complete
endif

Plug 'qpkorr/vim-bufkill'

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
nnoremap <leader>x :BD<cr>
nnoremap <leader>X :bd<cr>

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
nnoremap <leader>r :VimuxRunCommand("clear; node app.js")<cr>
nnoremap <leader>R :VimuxRunCommand("./output")<cr>
nnoremap <leader>q :VimuxPromptCommand<cr>

nnoremap s <C-w><C-w>

:let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1


highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" Store temporary files in a central spot
let vimtmp = $HOME . '/.vimtmp/' . getpid()
silent! call mkdir(vimtmp, "p", 0700)
let &backupdir=vimtmp
let &directory=vimtmp

