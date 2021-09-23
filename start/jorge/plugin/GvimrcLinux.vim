function! GvimrcLinux()

	set guifont=Droid\ Sans\ Mono\ for\ Powerline\ 14

	if filereadable("/etc/vim/gvimrc.local")
		source /etc/vim/gvimrc.local
	endif

	"call Vimrc()
	call Gvimrc()
	"call Android()

endfunction
