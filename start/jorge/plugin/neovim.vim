function! Neovim()

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
  "let g:NERDTreeWinPos = "left"
  "autocmd VimEnter * NERDTree
  "autocmd BufRead * call SyncTree()
  "autocmd BufRead * NERDTree
  "autocmd VimEnter * NERDTree
  "autocmd BufEnter * NERDTreeMirrorOpen
  autocmd BufWinEnter * NERDTreeMirror

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

  set mouse=a
  set t_Co=256
  colorscheme wombat256mod

  set encoding=utf-8

  set autoread
  au FocusGained * :checktime

  "set suffixesadd+=.js
  "set path+=$PWD/node_modules

  "au GUIEnter * call GvimrcWindows()
  "set guifont=Droid_Sans_Mono_Dotted_for_Powe:h12:cANSI:qDRAFT
  "set guifont=Droid\ Sans\ Mono\ for\ Powerline\ 14
  "au GUIEnter * call Gvimrc()
  "au GUIEnter * call MyTabLine()

  let g:ale_echo_cursor=1

  nnoremap Y Y
  nnoremap P P
  set title
  set titlestring=%F

  " US-intl keyboard dead key re-mappings
  nmap à `a
  nmap Á 'A
  nmap À `A
  nmap ç 'c
  nmap Ç 'C
  nmap é 'e
  nmap è `e
  nmap É 'E
  nmap È `E
  nmap í 'i
  nmap ì `i
  nmap Í 'I
  nmap Ì `I
  nmap ó 'o
  nmap ò `o
  nmap Ó 'O
  nmap Ò `O
  nmap ú 'u
  nmap ù `u
  nmap Ú 'U
  nmap Ù `U

  imap '<Right> <Right>
  imap '<Left> <Left>

  imap "<Right> <Right>
  imap "<Left> <Left>

  imap <silent><script><expr> <S-Tab> copilot#Accept("\<CR>")
  let g:copilot_no_tab_map = v:true

  "au UIEnter * call Gvimrc()

endfunction
