function! CFiles()

	autocmd BufNewFile,Bufread *.c call CConfig()

endfunction

function! CConfig()

    "linux
    "imap <F2> <esc>:!xterm -hold -e %:p.out<cr>i
	"map <F2> :!xterm -hold -e %:p.out<cr>
	"imap <F8> <esc>:!xterm -hold -e echo test<CR>i
	"map <F8> :!xterm -hold -e echo test<CR>
	"imap <F9> <esc>:!xterm -hold -e gcc -o %:p.out %:p<cr>i
	"map <F9> :!xterm -hold -e gcc -o %:p.out %:p<cr>

    imap <F2> <esc>:!%:p:r.exe<cr>i
	map <F2> :!%:p:r.exe<cr>
	imap <F9> <esc>:!D:\Jorge\Ephec\Programmation\C\gcc\bin\gcc.exe %:p -o %:p:r.exe -I"D:\Jorge\Ephec\Programmation\C\gcc\include"<cr>i
	map <F9> :!D:\Jorge\Ephec\Programmation\C\gcc\bin\gcc.exe %:p -o %:p:r.exe -I"D:\Jorge\Ephec\Programmation\C\gcc\include"<cr>

endfunction
