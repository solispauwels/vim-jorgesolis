function! LessFiles()

    autocmd BufNewFile,BufRead *.less call LessConfig()

endfunction

function! LessConfig()

    set syntax=css
	set ft=css

endfunction
