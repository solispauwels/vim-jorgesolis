function! GvimrcLinux()

   set guifont=Monospace\ 12

	if filereadable("/etc/vim/gvimrc.local")
		source /etc/vim/gvimrc.local
	endif

	source $VIMRUNTIME/mswin.vim
	behave mswin

	call Gvimrc()

    set tabstop=4
	set shiftwidth=4
	set expandtab

endfunction
