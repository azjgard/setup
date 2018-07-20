call plug#begin('~/.local/share/nvim/plugged')

" Functionality
Plug 'prettier/vim-prettier', { 'do': 'npm install' }
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'
" Plug 'w0rp/ale'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'godlygeek/tabular'
let g:AutoPairsMultilineClose = 0
" let g:prettier#autoformat = 0
" autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync
" Plug 'mattn/emmet-vim'

  " let g:ale_fixers = {
  " \   'javascript': [
  " \       'prettier-eslint',
  " \   ],
  " \}

Plug 'heavenshell/vim-jsdoc'
let g:jsdoc_allow_input_prompt=1
let g:jsdoc_input_description=1

let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync

" Syntax
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'digitaltoad/vim-pug'

" let g:user_emmet_leader_key='<Tab>'
" let g:user_emmet_settings = {
"   \  'javascript.jsx' : {
"     \      'extends' : 'jsx',
"     \  },
"   \}

" File Navigation / Management
Plug 'scrooloose/nerdtree'
Plug 'qpkorr/vim-bufkill'
Plug 'ap/vim-buftabline'
Plug 'kien/ctrlp.vim'
nnoremap <C-n> :NERDTreeToggle<CR>

" Aesthetics
Plug 'joshdick/onedark.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
let g:webdevicons_enable_ctrlp = 1
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '

call plug#end()

colorscheme onedark
syntax on

set tabstop=2 
set shiftwidth=2
set expandtab

set autochdir

set noswapfile

set cursorline

set noerrorbells
set visualbell
set tm=500

set ignorecase
set smartcase

set hidden

set number relativenumber
set numberwidth=4

set colorcolumn=80
hi ColorColumn ctermbg=gray

let mapleader=","

" Call me ghetto emmett
nnoremap <leader>t <esc>mt?<.*><cr>yf>`tpF<a/<esc><esc><esc>:nohlsearch<cr>A

nnoremap <C-]> :cnext<cr>
nnoremap <C-[> :cprev<cr>
nnoremap <leader>g :vimgrep ' 

nmap <esc> :nohlsearch<cr>

nnoremap <C-p> :FuzzyOpen<CR>
nnoremap gf :vertical wincmd f<CR>

nnoremap <C-s> :w<cr>
nnoremap <leader>s :source ~/.vimrc<cr>
nnoremap <leader>e :e ~/.vimrc<cr>

nnoremap <leader>pc :PlugClean<cr>
nnoremap <leader>pi :PlugInstall<cr>

nnoremap <leader>wc :close<cr>
nnoremap <leader>wh :split<cr>
nnoremap <leader>wv :vsplit<cr>

nnoremap <C-k> :bnext<cr>
nnoremap <C-j> :bprev<cr>

nnoremap <leader>x :BD<cr>
nnoremap <leader>X :BD!<cr>

imap <leader>; <esc>A;<esc>
nnoremap <leader>; <esc>A;<esc>

nnoremap <leader>= :Tabularize /=<cr>
nnoremap <leader>, :Tabularize /,<cr>

nnoremap <leader>j :JsDoc<cr>

let g:currentmode={
      \ 'n'  : 'Normal ',
      \ 'no' : 'N·Operator Pending ',
      \ 'v'  : 'Visual ',
      \ 'V'  : 'V·Line ',
      \ 'x22' : 'V·Block ',
      \ 's'  : 'Select ',
      \ 'S'  : 'S·Line ',
      \ 'x19' : 'S·Block ',
      \ 'i'  : 'Insert ',
      \ 'R'  : 'R ',
      \ 'Rv' : 'V·Replace ',
      \ 'c'  : 'Command ',
      \ 'cv' : 'Vim Ex ',
      \ 'ce' : 'Ex ',
      \ 'r'  : 'Prompt ',
      \ 'rm' : 'More ',
      \ 'r?' : 'Confirm ',
      \ '!'  : 'Shell ',
      \ 't'  : 'Terminal '
      \}

set statusline=\ %1*\ %{g:currentmode[mode()]}%*\ \ 
set statusline+=\ %2*\ %F\ %*\ \ \ 
set statusline+=%2*\ [%l/%L]\ %*\ \ 

hi User1 ctermbg=blue ctermfg=white
hi User2 ctermfg=white

hi BufTabLineCurrent ctermfg=40 ctermbg=237

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
