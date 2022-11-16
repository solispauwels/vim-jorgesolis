let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint'],
\   'typescript': ['eslint'],
\}

let g:ale_fix_on_save = 1
let g:ale_completion_autoimport = 1

"let g:ale_lint_delay=1000
"let g:ale_lint_on_text_changed= `always`, `insert`, or `normal`
"let g:ale_lint_on_text_changed = 'normal'
"let g:ale_lint_on_insert_leave = 1
"let g:airline#extensions#ale#enabled = 1

let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_enter = 0

let g:ctrlp_match_window = 'top,order:btt,min:1,max:10,results:10'

let g:airline_theme='wombat'
let g:airline_powerline_fonts=1

let g:ale_echo_cursor=0

"let g:Powerline_symbols = 'unicode'

let NERDTreeShowHidden=1
let g:NERDTreeWinSize=45

let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 3
let g:indent_guides_auto_colors = 0

autocmd BufReadPost * :DetectIndent
let g:detectindent_preferred_expandtab = 1
let g:detectindent_preferred_indent = 2

let g:snipMate = { 'snippet_version' : 1 }

autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd guibg=#222222 ctermbg=232
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#282828 ctermbg=236

"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd guibg=#FDF6E3 ctermbg=232
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#f6efda ctermbg=236

syntax on

set noeb vb t_vb=
au GUIEnter * set vb t_vb=

set t_Co=256
colorscheme wombat256mod

set encoding=utf-8

set autoread

"set suffixesadd+=.js
"set path+=$PWD/node_modules

au GUIEnter * call GvimrcWindows()

let g:ale_echo_cursor=1
