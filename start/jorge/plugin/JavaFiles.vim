"function! JavaFiles()

    "autocmd BufNewFile,Bufread *.java imap <F2> <esc>:!"C:\Program Files\Java\jdk1.6.0_21\bin\java.exe" -cp %:p:h %:t:r<cr>i
	"autocmd BufNewFile,Bufread *.java map <F2> :!"C:\Program Files\Java\jdk1.6.0_21\bin\java.exe" -cp %:p:h %:t:r<cr>
	"autocmd BufNewFile,Bufread *.java imap <f8> <esc>:!"C:\Program Files\Java\jdk1.6.0_21\bin\jar.exe" cf %:p:r.jar *
	"autocmd BufNewFile,Bufread *.java map <f8> :!"C:\Program Files\Java\jdk1.6.0_21\bin\jar.exe" cf %:p:r.jar *
	"autocmd BufNewFile,Bufread *.java imap <f9> <esc>:!"C:\Program Files\Java\jdk1.6.0_21\bin\javac.exe" %:p<cr>i
	"autocmd BufNewFile,Bufread *.java map <f9> :!"C:\Program Files\Java\jdk1.6.0_21\bin\javac.exe" %:p<cr>

"endfunction
