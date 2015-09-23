function! Gvimrc()

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
    set guitablabel=%t\ %M
    set autochdir
    set formatoptions+=r

    "set wildmenu
    "set fileencoding=utf-8
    "set enc=utf-8

    colorscheme jorgesolis

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

    imap <F4> <esc>:execute "tabmove" tabpagenr() - 2<cr>i
    map <F4> :execute "tabmove" tabpagenr() - 2<cr>

    imap <F5> <esc>:execute "tabmove" tabpagenr()<cr>i
    map <F5> :execute "tabmove" tabpagenr()<cr>

    "imap <F4> <esc>:set nospell<cr>i
    "map <F4> :set nospell<cr>

    "imap <F5> <C-R>=strftime("\/\/%I:%M %p %m\/%d/\%Y")<CR><CR>
    "map <F5> i<C-R>=strftime("\/\/%I:%M %p %m\/%d/\%Y")<CR><CR>

    imap <F6> <esc>:set wrap!<cr>i
    map <F6> :set wrap!<cr>

    imenu HTML.Entities <esc>:call HTMLentities()<cr>i
    menu HTML.Entities :call HTMLentities()<cr>

    imenu HTML.Decode <esc>:call HTMLentitiesDecode()<cr>i
    menu HTML.Decode :call HTMLentitiesDecode()<cr>

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

    autocmd BufWritePre * :%s/\s\+$//e

    call MdFiles()
    call TwigJSFiles()

    autocmd BufRead,BufNewFile *.* match gray /  /

    augroup filetype
        autocmd! BufRead,BufNewFile *.json set filetype=json syntax=javascript
    augroup END

endfunction
