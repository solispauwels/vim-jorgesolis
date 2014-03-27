execute pathogen#infect()

let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': ['php', 'javascript'] }
let g:syntastic_php_phpcs_args="--report=csv --standard=/var/www/Claroline/app/dev/config/phpcs.xml"
let g:syntastic_php_phpmd_post_args="/var/www/Claroline/app/dev/config/phpmd.xml"
let g:syntastic_php_checkers=['php', 'phpcs', 'phpmd']
let g:syntastic_javascript_jshint_conf="/var/www/Claroline/app/dev/config/jshint.json"
let g:syntastic_javascript_checkers=['jshint']
let g:ctrlp_match_window = 'top,order:btt,min:1,max:10,results:10'
let g:airline_powerline_fonts = 1
let NERDTreeShowHidden=1

set t_Co=256
colorscheme wombat256mod
