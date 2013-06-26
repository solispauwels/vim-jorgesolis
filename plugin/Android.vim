"@TODO finish
function Android()

	imap <F3> <esc>:!android create project --target android-14 --name project --path "C:\Jorge\Programming\Android" --activity activity --package be.activity.project
	map <F3> :!android create project --target android-14 --name project --path "C:\Jorge\Programming\Android" --activity activity --package be.activity.project

	autocmd BufNewFile,Bufread *.java imap <F2> <esc>:!cd /D "%:p:h\" &&  cd.. && cd.. && cd.. && cd.. && cd bin && adb install -r %:t:r-debug.apk
	autocmd BufNewFile,Bufread *.java map <F2> :!cd /D "%:p:h\" &&  cd.. && cd.. && cd.. && cd.. && cd bin && adb install -r %:t:r-debug.apk
	autocmd BufNewFile,Bufread *.java imap <F9> <esc>:!cd /D "%:p:h\" &&  cd.. && cd.. && cd.. && cd.. && ant debug<cr>i
	autocmd BufNewFile,Bufread *.java map <F9> :!cd /D "%:p:h\" &&  cd.. && cd.. && cd.. && cd.. && ant debug<cr>
	autocmd BufNewFile,Bufread *.java imap <F8> <esc>:!start emulator -avd Test -verbose -shell -show-kernel -no-snapshot-load<cr>i
	autocmd BufNewFile,Bufread *.java map <F8> :!start emulator -avd Test -verbose -shell -show-kernel -no-snapshot-load<cr>

	"autocmd BufNewFile,Bufread *.java imap <F2> <esc>:!cd /D "%:p:h\" &&  cd.. && cd.. && cd.. && cd.. && cd bin && adb install -l -r %:t:r-debug.apk<cr>i
	"autocmd BufNewFile,Bufread *.java map <F2> :!cd /D "%:p:h\" &&  cd.. && cd.. && cd.. && cd.. && cd bin && adb install -l -r %:t:r-debug.apk<cr>
	"autocmd BufNewFile,Bufread *.java imap <F9> <esc>:!set JAVA_HOME=c:\Progra~1\Java\jdk1.7.0_03 && cd /D "%:p:h\" &&  cd.. && cd.. && cd.. && cd.. && ant debug<cr>i
	"autocmd BufNewFile,Bufread *.java map <F9> :!set JAVA_HOME=c:\Progra~1\Java\jdk1.7.0_03 && cd /D "%:p:h\" &&  cd.. && cd.. && cd.. && cd.. && ant debug<cr>
	"autocmd BufNewFile,Bufread *.java imap <F8> <esc>:!start emulator -avd Test -partition-size 250 -verbose -shell -show-kernel -no-snapshot-load<cr>i
	"autocmd BufNewFile,Bufread *.java map <F8> :!start emulator -avd Test -partition-size 250 -verbose -shell -show-kernel -no-snapshot-load<cr>

endfunction
