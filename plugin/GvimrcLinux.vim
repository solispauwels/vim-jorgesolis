function! GvimrcLinux()

	"set guifont=Droid\ Sans\ Mono\ for\ Powerline\ 14
	set guifont=Droid_Sans_Mono_Dotted_for_Powe:h12:cANSI:qDRAFT

	if filereadable("/etc/vim/gvimrc.local")
		source /etc/vim/gvimrc.local
	endif

	source $VIMRUNTIME/mswin.vim
	behave mswin

	call Gvimrc()
	call Android()

	"set tabstop=4
	"set shiftwidth=4
	"set expandtab
	set tabstop=4
	"set softtabstop=0
	"set noexpandtab
	"set shiftwidth=4

endfunction
