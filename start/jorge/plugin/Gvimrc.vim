function! Gvimrc()

  source $VIMRUNTIME/mswin.vim
  behave mswin

  set noswapfile
  set nowrap
  set nobackup
  set nowritebackup
  set ignorecase
  set incsearch
  set hlsearch
  set nocursorline
  set cc=120
  set modelines=0
  set nomodeline
  set number
  set guioptions-=T "remove toolbar
  set guioptions-=m "remove menu
  set guioptions-=e "remove tabs in gui mode
  "set guioptions-=r remove scroll right
  set guioptions-=L "remove scroll left
  set guitablabel=%t\ %M
  set autochdir
  set formatoptions+=r
  set breakindent
  set noballooneval
  set nopaste

  "set wildmenu
  "set fileencoding=utf-8
  "set enc=utf-8

  colorscheme jorgesolis
  "colorscheme solarized
  "set background=light

  let g:netrw_liststyle=3
  "let g:netrw_keepdir=0

  filetype indent on
  set si
  set ai
  let g:html_indent_inctags = "li,p,head"

  imap <F2> <esc>:cpf<cr>
  map <F2> :cpf<cr>

  imap <F3> <esc>:cnf<cr>
  map <F3> :cnf<cr>

  imap <F4> <esc>:tabmove -<cr>i
  map <F4> :tabmove -<cr>

  imap <F5> <esc>:tabmove +<cr>i
  map <F5> :tabmove +<cr>

  "imap <F4> <esc>:set nospell<cr>i
  "map <F4> :set nospell<cr>

  "imap <F5> <C-R>=strftime("\/\/%I:%M %p %m\/%d/\%Y")<CR><CR>
  "map <F5> i<C-R>=strftime("\/\/%I:%M %p %m\/%d/\%Y")<CR><CR>

  imap <F6> <esc>:set wrap!<cr>i
  map <F6> :set wrap!<cr>

  "imenu HTML.Entities <esc>:call HTMLentities()<cr>i
  "menu HTML.Entities :call HTMLentities()<cr>

  "imenu HTML.Decode <esc>:call HTMLentitiesDecode()<cr>i
  "menu HTML.Decode :call HTMLentitiesDecode()<cr>

  map <c-f> /
  imap <c-f> <esc>/

  nnoremap <c-d> i<c-d><esc>

  nmap <silent> <A-Up> :wincmd k<CR>
  nmap <silent> <A-Down> :wincmd j<CR>
  nmap <silent> <A-Left> :wincmd h<CR>
  nmap <silent> <A-Right> :wincmd l<CR>

  map <MiddleMouse> <Nop>
  imap <MiddleMouse> <Nop>
  map <2-MiddleMouse> <Nop>
  imap <2-MiddleMouse> <Nop>
  map <3-MiddleMouse> <Nop>
  imap <3-MiddleMouse> <Nop>
  map <4-MiddleMouse> <Nop>
  imap <4-MiddleMouse> <Nop>

  imap <script><silent><nowait><expr> <S-Tab> copilot#Accept("\<CR>")

  "imap <script><silent><nowait><expr> <S-Tab> codeium#Accept()
  "imap <M-]>   <Cmd>call codeium#CycleCompletions(1)<CR>
  "imap <M-[>   <Cmd>call codeium#CycleCompletions(-1)<CR>
  "imap <M-/>   <Cmd>call codeium#Complete()<CR>

  "set statusline+=\{…\}%3{codeium#GetStatusString()}

  "autocmd BufWritePre * :%s/\s\+$//e

  "call MdFiles()
  "call TwigJSFiles()

  "autocmd BufRead,BufNewFile *.* match gray /  /
  "autocmd BufRead,BufNewFile *.* match LineNr /  /

  augroup filetype
    "autocmd! BufRead,BufNewFile *.json set filetype=json syntax=javascript
    autocmd BufRead,FileType * call ALELSPMappings()
  augroup END

  "set tabstop=4
  "set shiftwidth=4
  "set expandtab
  set tabstop=4
  "set softtabstop=0
  "set noexpandtab
  "set shiftwidth=4

  set stal=2
  set tabline=%!MyTabLine()

  set wildignore+=*/generated/*
  set wildignore+=*/node_modules/*
  set wildignore+=*/dist/*
  set wildignore+=*/private/*
  set wildignore+=*/.git/*

  "highlight! CopilotSuggestion guifg=#99968b gui=italic

  " If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
  autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

  function! CopyToClipboard()
    if strlen(@") != 0 && v:event['operator'] ==# 'y'
      call system('clip.exe', @")
    endif
  endfunction

  "autocmd TextYankPost * call CopyToClipboard()

  "set clipboard+=unnamedplus
  "set clipboard-=autoselect

  function! PasteClean()
    silent! %s/\r$//g
  endfunction

  "let pastev = maparg('<C-v>', 'v')
  "let pasten = maparg('<C-v>', 'n')
  "let pastei = maparg('<C-v>', 'i')

  "exec 'vnoremap <C-v> ' . pasten . ':call PasteClean()<cr>'
  "exec 'nnoremap <C-v> ' . pasten . ':call PasteClean()<cr>'
  "exec 'inoremap <C-v> ' . pastei . '<esc>:call PasteClean()<cr>i<right>'

  augroup MySettings
    autocmd!
    autocmd FileType typescript highlight clear SpellBad
    "autocmd FileType typescript highlight link ALEVirtualTextError Error
    highlight ALEVirtualTextError guifg=#99968b
    autocmd BufEnter * set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab
  augroup END

endfunction
