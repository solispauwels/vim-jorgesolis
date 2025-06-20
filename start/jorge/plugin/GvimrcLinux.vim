function! GvimrcLinux()

	set guifont=Droid\ Sans\ Mono\ Dotted\ for\ Powerline\ 13.6

	"if filereadable("/etc/vim/gvimrc.local")
	"	source /etc/vim/gvimrc.local
	"endif

	call Gvimrc()
	"call Android()

endfunction

function! MoveCenter()
  silent !xdotool getactivewindow windowmove 1280 0
  silent !xdotool getactivewindow windowsize 2550 1407
endfunction

function! MoveLeft()
  silent !xdotool getactivewindow windowmove 0 0
  silent !xdotool getactivewindow windowsize 1270 1407
endfunction

function! MoveRight()
  silent !xdotool getactivewindow windowmove 3840 0
  silent !xdotool getactivewindow windowsize 1270 1407
endfunction
