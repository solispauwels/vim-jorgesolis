execute pathogen#infect()

let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': ['java', 'php', 'javascript', 'json'] }
let g:syntastic_php_phpcs_args="--report=csv --standard=/var/www/Claroline/app/dev/config/phpcs.xml"
let g:syntastic_php_phpmd_post_args="/var/www/Claroline/app/dev/config/phpmd.xml"
let g:syntastic_php_checkers=['php', 'phpcs', 'phpmd']
"let g:syntastic_javascript_jshint_args="--config ~/.vim/bundle/vim-jorgesolis/config/jshint.json"
"let g:syntastic_javascript_jscs_args="--config=\/home\/jorge\/\.vim\/bundle\/vim-jorgesolis\/config\/jscs.json"
let g:syntastic_javascript_checkers=['standard']
let g:syntastic_json_checkers=['jsonlint']
let g:syntastic_java_checkers=['javac']
"let g:syntastic_java_javac_config_file_enabled = 1
"let g:syntastic_java_javac_classpath = "/home/jorge/android-connect/app/build/intermediates/classes/prod/debug:/home/jorge/android-connect/app/build/tmp/expandedArchives/classes.jar_sf8xogol6webn2n515scsn7s:/home/jorge/android/platforms/android-25/*.jar"
let g:syntastic_java_javac_classpath = "
\/home/jorge/android-connect/app/build/tmp/expandedArchives/classes.jar_33bt3lk14it8nzk90cpl9k0zc:
\/home/jorge/android-connect/app/build/tmp/expandedArchives/classes.jar_789zbc6j2c3jjq682ulxywtu5:
\/home/jorge/android-connect/app/build/tmp/expandedArchives/classes.jar_cvwtqbcj60k2q3320zmqlhhd9:
\/home/jorge/android-connect/app/build/tmp/expandedArchives/gson-2.8.0.jar_3k0qwaav1e6z5oo1615em8xr7:
\/home/jorge/android-connect/app/build/tmp/expandedArchives/classes.jar_3o5xr3pvyjom6308o1y1q12bl:
\/home/jorge/android-connect/app/build/tmp/expandedArchives/classes.jar_8c2ylmf663w7jjzewvx52qg9p:
\/home/jorge/android-connect/app/build/tmp/expandedArchives/classes.jar_dohanq5cunlcwgqcg29smydbl:
\/home/jorge/android-connect/app/build/tmp/expandedArchives/jackson-core-2.6.1.jar_3v577u772r027cja8d22j8im:
\/home/jorge/android-connect/app/build/tmp/expandedArchives/classes.jar_47vux6h8qy32aksy7txlcgvdk:
\/home/jorge/android-connect/app/build/tmp/expandedArchives/classes.jar_9bnd3bo968taqr8q2ti9d5s85:
\/home/jorge/android-connect/app/build/tmp/expandedArchives/classes.jar_ewn0jlvi0lhif4xlc3c4glf11:
\/home/jorge/android-connect/app/build/tmp/expandedArchives/jsoup-1.8.3.jar_5vcu6i2wuit7mgfb2gpvtt5r7:
\/home/jorge/android-connect/app/build/tmp/expandedArchives/classes.jar_4q9k1wh5zhfj41shu4slfol18:
\/home/jorge/android-connect/app/build/tmp/expandedArchives/classes.jar_9z48gk5emqocas43vj1n9j3ur:
\/home/jorge/android-connect/app/build/tmp/expandedArchives/classes.jar_h7g6jes52dmicpu51dkg5g56:
\/home/jorge/android-connect/app/build/tmp/expandedArchives/support-annotations-25.1.0.jar_5ncvxwxjqzw5jstq4yqmfhohj:
\/home/jorge/android-connect/app/build/tmp/expandedArchives/classes.jar_56xsd0msa8bmwj8vwobj3fp9d:
\/home/jorge/android-connect/app/build/tmp/expandedArchives/classes.jar_a1ig03g2bzslv6hvwk1aze623:
\/home/jorge/android-connect/app/build/tmp/expandedArchives/classes.jar_sf8xogol6webn2n515scsn7s:
\/home/jorge/android-connect/app/build/tmp/expandedArchives/vinnie-1.0.1.jar_5oh2u9mmg73amadlr69yfr31w:
\/home/jorge/android-connect/app/build/tmp/expandedArchives/classes.jar_591rzmsqhyy2xuss3tzt18alz:
\/home/jorge/android-connect/app/build/tmp/expandedArchives/classes.jar_a80i3gb4klbnudj1ja72s5ds8:
\/home/jorge/android-connect/app/build/tmp/expandedArchives/classes.jar_we2ll5b6ipkr3c4s983nvo30:
\/home/jorge/android-connect/app/build/tmp/expandedArchives/classes.jar_5oeoxjfkd2h2k4xcd95zt05hw:
\/home/jorge/android-connect/app/build/tmp/expandedArchives/classes.jar_azfjysalijykotuymbo3pjak2:
\/home/jorge/android-connect/app/build/tmp/expandedArchives/ez-vcard-0.10.0.jar_do8vk8fugrpgfckusu9kv9wk5:
\/home/jorge/android-connect/app/build/tmp/expandedArchives/classes.jar_77d2hsnmsjvlnszfv4ipd03i1:
\/home/jorge/android-connect/app/build/tmp/expandedArchives/classes.jar_ceo3otqg0huf9zphntdcbjcei:
\/home/jorge/android-connect/app/build/tmp/expandedArchives/freemarker-2.3.23.jar_199oszz7kwihwin723q8s924h:
\/home/jorge/android-connect/app/build/intermediates/classes/prod/debug:
\/home/jorge/android/platforms/android-25/*.jar"

let g:ctrlp_match_window = 'top,order:btt,min:1,max:10,results:10'

let g:airline_powerline_fonts = 1
let g:airline_theme='wombat'

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

set t_Co=256
colorscheme wombat256mod
