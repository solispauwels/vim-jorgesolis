function! MdFiles()

    autocmd BufNewFile,Bufread *.md call MDconfig()
    autocmd BufWritePost *.md :silent !cp '%:p' /var/www/markdown/temp.txt

endfunction

function! MDconfig()

    imap <F9> <esc>:!google-chrome http://localhost/markdown<cr>i
	map <F9> :!google-chrome http://localhost/markdown<cr>
    set cc=80
    set spell
    set spelllang=en

endfunction
