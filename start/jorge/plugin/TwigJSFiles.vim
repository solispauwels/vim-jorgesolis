function! TwigJSFiles()

    autocmd BufNewFile,BufRead *.twigjs call TwigJSConfig()

endfunction

function! TwigJSConfig()

    set syntax=twig
	set ft=twig

endfunction
