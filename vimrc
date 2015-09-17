execute pathogen#infect()

let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': ['php', 'javascript'] }
let g:syntastic_php_phpcs_args="--report=csv --standard=/var/www/Claroline/app/dev/config/phpcs.xml"
let g:syntastic_php_phpmd_post_args="/var/www/Claroline/app/dev/config/phpmd.xml"
let g:syntastic_php_checkers=['php', 'phpcs', 'phpmd']
let g:syntastic_javascript_jshint_args="--config ~/.vim/bundle/vim-jorgesolis/config/jshint.json"
let g:syntastic_javascript_jscs_args="--config=\/home\/jorge\/\.vim\/bundle\/vim-jorgesolis\/config\/jscs.json"
let g:syntastic_javascript_checkers=['jshint', 'jscs']
let g:ctrlp_match_window = 'top,order:btt,min:1,max:10,results:10'
let g:airline_powerline_fonts = 1
let NERDTreeShowHidden=1

let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 3
let g:indent_guides_auto_colors = 0

autocmd BufReadPost * :DetectIndent
let g:detectindent_preferred_expandtab = 1
let g:detectindent_preferred_indent = 4

autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#222222 ctermbg=232
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#282828 ctermbg=236

set t_Co=256
colorscheme wombat256mod
