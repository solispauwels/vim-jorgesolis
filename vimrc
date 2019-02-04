execute pathogen#infect()

let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': ['java', 'php', 'javascript', 'json'] }
let g:syntastic_php_checkers=['php', 'phpcs', 'phpmd']
let g:syntastic_javascript_checkers=['standard']
let g:syntastic_json_checkers=['jsonlint']
let g:syntastic_java_checkers=['javac']

let g:ctrlp_match_window = 'top,order:btt,min:1,max:10,results:10'

let g:airline_theme='wombat'
let g:airline_powerline_fonts=1

"let g:Powerline_symbols = 'unicode'

set encoding=utf-8

let NERDTreeShowHidden=1

let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 3
let g:indent_guides_auto_colors = 0

autocmd BufReadPost * :DetectIndent
let g:detectindent_preferred_expandtab = 1
let g:detectindent_preferred_indent = 2

autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd guibg=#222222 ctermbg=232
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#282828 ctermbg=236

"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd guibg=#FDF6E3 ctermbg=232
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#f6efda ctermbg=236

syntax on

set noeb vb t_vb=
au GUIEnter * set vb t_vb=

set t_Co=256
colorscheme wombat256mod
