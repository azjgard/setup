call plug#begin('~/setup/vim/plugged')
" Syntax enhancement and visual alterations 
    " CSS
    Plug 'cakebaker/scss-syntax.vim'
    Plug 'hail2u/vim-css3-syntax'
    Plug 'ap/vim-css-color' "preview hex colors in CSS files

    " HTML
    Plug 'othree/html5.vim'
    Plug 'dNitro/vim-pug-complete'
    Plug 'Valloric/MatchTagAlways' "show matching HTML tags

    " Javascript
    Plug 'jelera/vim-javascript-syntax'

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
    Plug 'w0rp/ale' "asynchronous linting (thanks neovim)
    let g:ale_sign_column_always=1
    let g:ale_sign_error = '>>'
    let g:ale_sign_warning = '-|'

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

call plug#end()
