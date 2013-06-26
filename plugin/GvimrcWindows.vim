function! GvimrcWindows()

    set guifont=consolas:h10:b

    let g:netrw_cursorline=0

	call Gvimrc()
    call CFiles()

	"autocmd BufNewFile,Bufread *.php,*.php3,*.php4 set keywordprg="help"

endfunction
