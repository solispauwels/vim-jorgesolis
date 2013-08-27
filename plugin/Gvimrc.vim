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
    set modeline
    set number
    set guioptions-=T "remove toolbar
    set si

    "set wildmenu
    "set fileencoding=utf-8
    "set enc=utf-8

    colorscheme jorgesolis

    let g:netrw_liststyle=3
    "let g:netrw_keepdir=0

    filetype indent on

    imenu HTML.Entities <esc>:call HTMLentities()<cr>i
    menu HTML.Entities :call HTMLentities()<cr>

    imap <F2> <esc>:cpf<cr>i
    map <F2> :cpf<cr>

    imap <F3> <esc>:cnf<cr>i
    map <F3> :cnf<cr>

    "imap <F4> <esc>:set nospell<cr>i
    "map <F4> :set nospell<cr>

    imap <F5> <C-R>=strftime("\/\/%I:%M %p %m\/%d/\%Y")<CR><CR>
    map <F5> i<C-R>=strftime("\/\/%I:%M %p %m\/%d/\%Y")<CR><CR>

    imap <F6> <esc>:set wrap!<cr>i
    map <F6> :set wrap!<cr>

    map <c-f> /
    imap <c-f> <esc>/

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
    call Symfony2()

endfunction
