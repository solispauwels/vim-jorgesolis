function! MdFiles()

    autocmd BufNewFile,Bufread *.md call MDconfig()
    autocmd BufWritePost *.md :silent !flavored-markdown < '%:p' > /var/tmp/markdown.html

endfunction

function! MDconfig()

    imap <F9> <esc> :!google-chrome /var/tmp/markdown.html<cr>i
	map <F9> :!google-chrome /var/tmp/markdown.html<cr>
    set cc=80
    set spell
    set spelllang=en

endfunction
