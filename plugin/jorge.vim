function! HTMLentities()
	%s/á/\&aacute;/ge
	%s/é/\&eacute;/ge
	%s/í/\&iacute;/ge
	%s/ó/\&oacute;/ge
	%s/ú/\&uacute;/ge
	%s/à/\&agrave;/ge
	%s/è/\&egrave;/ge
	%s/ì/\&igrave;/ge
	%s/ò/\&ograve;/ge
	%s/ù/\&ugrave;/ge
	%s/â/\&acirc;/ge
	%s/ê/\&ecirc;/ge
	%s/î/\&icirc;/ge
	%s/ô/\&ocirc;/ge
	%s/û/\&ucirc;/ge
	%s/ä/\&auml;/ge
	%s/ë/\&euml;/ge
	%s/ï/\&iuml;/ge
	%s/ö/\&ouml;/ge
	%s/ü/\&uuml;/ge
	%s/Á/\&Aacute;/ge
	%s/É/\&Eacute;/ge
	%s/Í/\&Iacute;/ge
	%s/Ó/\&Oacute;/ge
	%s/Ú/\&Uacute;/ge
	%s/À/\&Agrave;/ge
	%s/È/\&Egrave;/ge
	%s/Ì/\&Igrave;/ge
	%s/Ò/\&Ograve;/ge
	%s/Ù/\&ugrave;/ge
	%s/Â/\&Acirc;/ge
	%s/Ê/\&Ecirc;/ge
	%s/Î/\&Icirc;/ge
	%s/Ô/\&Ocirc;/ge
	%s/Û/\&Ucirc;/ge
	%s/Ä/\&Auml;/ge
	%s/Ë/\&Euml;/ge
	%s/Ï/\&Iuml;/ge
	%s/Ö/\&Ouml;/ge
	%s/Ü/\&Uuml;/ge
	%s/ç/\&ccedil;/ge
	%s/ñ/\&ntilde;/ge
	%s/€/\&#8364;/ge

endfunction

function! Symfony2()
    let symfonypath="/var/www/Claroline"

    "execute 'imenu Symfony2.Compile\ CSS <esc>:!gnome-terminal -e "bash -c \"php '.symfonypath.'/app/console claroline:theme:compile; exec bash\""<cr>i'
	"execute 'menu Symfony2.Compile\ CSS :!gnome-terminal -e "bash -c \"php '.symfonypath.'/app/console claroline:theme:compile; exec bash\""<cr>'

    execute 'imenu Symfony2.Compile\ CSS <esc>:!php '.symfonypath.'/app/console claroline:theme:compile<cr>i'
	execute 'menu Symfony2.Compile\ CSS :!php '.symfonypath.'/app/console claroline:theme:compile<cr>'

    execute 'imenu Symfony2.Clear\ cache <esc>:!gnome-terminal -e "bash -c \" sudo rm -R '.symfonypath.'/app/cache; mkdir '.symfonypath.'/app/cache; sudo chmod 0777 -R '.symfonypath.'/app/cache; echo cache_deleted; exec bash\""<cr>i'
	execute 'menu Symfony2.Clear\ cache :!gnome-terminal -e "bash -c \"  sudo rm -R '.symfonypath.'/app/cache; mkdir '.symfonypath.'/app/cache; sudo chmod 0777 -R '.symfonypath.'/app/cache; echo cache_deleted; exec bash\""<cr>'

    execute 'imenu Symfony2.Assetic\ dump <esc>:!gnome-terminal -e "bash -c \"php '.symfonypath.'/app/console assetic:dump; exec bash\""<cr>i'
	execute 'menu Symfony2.Assetic\ dump :!gnome-terminal -e "bash -c \"php '.symfonypath.'/app/console assetic:dump; exec bash\""<cr>'

    execute 'imenu Symfony2.Raw\ Install <esc>:!gnome-terminal -e "bash -c \"php '.symfonypath.'/app/dev/raw_install; exec bash\""<cr>i'
	execute 'menu Symfony2.Raw\ Install :!gnome-terminal -e "bash -c \"php '.symfonypath.'/app/dev/raw_install; exec bash\""<cr>'

    execute 'imenu Symfony2.Chmod\ cache\ and\ logs <esc>:!gnome-terminal -e "bash -c \"sudo chmod 0777 -R '.symfonypath.'/app/cache; sudo chmod 0777 -R '.symfonypath.'/app/logs; exec bash\""<cr>i'
	execute 'menu Symfony2.Chmod\ cache\ and\ logs :!gnome-terminal -e "bash -c \"sudo chmod 0777 -R '.symfonypath.'/app/cache; sudo chmod 0777 -R '.symfonypath.'/app/logs; exec bash\""<cr>'

endfunction

function MyGvimrc()
	set noswapfile
	set nonu
	set nowrap
	set nobackup
	set nowritebackup
	"let g:netrw_keepdir=1
	"set wildmenu
	set ignorecase
	set incsearch
	set hlsearch
	"set fileencoding=utf-8
	"set enc=utf-8
	set nocursorline
    set cc=120
	set modeline

	colorscheme jorgesolis
	set number
	set guioptions-=T "remove toolbar

	imenu HTML.Entities <esc>:call HTMLentities()<cr>i
	menu HTML.Entities :call HTMLentities()<cr>

	imap <F3> <esc>:set spell<cr>:set spelllang=es<cr>i
	map <F3> :set spell<cr>:set spelllang=es<cr>

	imap <F4> <esc>:set nospell<cr>i
	map <F4> :set nospell<cr>

	imap <F5> <C-R>=strftime("\/\/%I:%M %p %m\/%d/\%Y")<CR><CR>
	map <F5> i<C-R>=strftime("\/\/%I:%M %p %m\/%d/\%Y")<CR><CR>

	imap <F6> <esc>:set wrap!<cr>i
	map <F6> :set wrap!<cr>

	"imap <F7> <esc>:colorscheme default<cr>i
	"map <F7> :colorscheme default<cr>
	"imap <F8> <esc>:colorscheme desert<cr>i
	"map <F8> :colorscheme desert<cr>

    filetype indent on

	"au BufRead,BufNewFile *.twig set syntax=htmldjango
	"autocmd BufNewFile,BufRead *.twig set syntax=htmldjango
	"autocmd BufNewFile,BufRead *.twig set ft=htmldjango
	"autocmd BufNewFile,BufRead *.twigjs set syntax=htmldjango
	"autocmd BufNewFile,BufRead *.twigjs set ft=htmldjango

    autocmd BufNewFile,BufRead *.less set syntax=css
	autocmd BufNewFile,BufRead *.less set ft=css

	autocmd BufNewFile,BufRead *.less set syntax=css

    autocmd BufWritePre * :%s/\s\+$//e

	set si

	map <c-f> /
	imap <c-f> <esc>/

    let g:netrw_liststyle=3

endfunction

function GvimrcWindows()
	set guifont=consolas:h10:b

	call MyGvimrc()

	imenu Symphony.GenerateBundle <esc>!php D:\Jorge\Programming\Symfony\app\console generate:bundle <cr>i
	menu Symphony.GenerateBundle :!php D:\Jorge\Programming\Symfony\app\console generate:bundle <cr>
	imenu Symfony.ClearCache <esc>:!php D:\Jorge\Programming\Symfony\app\console cache:clear <cr>i
	menu Symfony.ClearCache :!php D:\Jorge\Programming\Symfony\app\console cache:clear <cr>


	let g:netrw_cursorline=0

	"imap <F2> <esc>:!%:p:r.exe <cr>i
	"map <F2> :!%:p:r.exe <cr>

	autocmd BufNewFile,Bufread *.c imap <F2> <esc>:!%:p:r.exe<cr>i
	autocmd BufNewFile,Bufread *.c map <F2> :!%:p:r.exe<cr>
	autocmd BufNewFile,Bufread *.c imap <F9> <esc>:!D:\Jorge\Université\Ephec\Programmation\C\gcc\bin\gcc.exe %:p -o %:p:r.exe -I"D:\Jorge\Université\Ephec\Programmation\C\gcc\include"<cr>i
	autocmd BufNewFile,Bufread *.c map <F9> :!D:\Jorge\Université\Ephec\Programmation\C\gcc\bin\gcc.exe %:p -o %:p:r.exe -I"D:\Jorge\Université\Ephec\Programmation\C\gcc\include"<cr>

	"autocmd BufNewFile,Bufread *.java imap <F2> <esc>:!"C:\Program Files\Java\jdk1.6.0_21\bin\java.exe" -cp %:p:h %:t:r<cr>i
	"autocmd BufNewFile,Bufread *.java map <F2> :!"C:\Program Files\Java\jdk1.6.0_21\bin\java.exe" -cp %:p:h %:t:r<cr>
	"autocmd BufNewFile,Bufread *.java imap <f8> <esc>:!"C:\Program Files\Java\jdk1.6.0_21\bin\jar.exe" cf %:p:r.jar *
	"autocmd BufNewFile,Bufread *.java map <f8> :!"C:\Program Files\Java\jdk1.6.0_21\bin\jar.exe" cf %:p:r.jar *
	"autocmd BufNewFile,Bufread *.java imap <f9> <esc>:!"C:\Program Files\Java\jdk1.6.0_21\bin\javac.exe" %:p<cr>i
	"autocmd BufNewFile,Bufread *.java map <f9> :!"C:\Program Files\Java\jdk1.6.0_21\bin\javac.exe" %:p<cr>

	"autocmd BufNewFile,Bufread *.pas imap <F9> <esc>:!C:\Dev-Pas\bin\ppc386 %:p - oc:%:p.exe -S2 -Sg -Un -O1 -Op1   -FuC:\Dev-Pas\units\ -FuC:\Dev-Pas\units\rtl\  -FlC:\Dev-Pas\units\-FlC:\Dev-Pas\units\rtl\ -FDC:\Dev-Pas\bin\ <cr>i
	"autocmd BufNewFile,Bufread *.pas map <F9> :!C:\Dev-Pas\bin\ppc386 %:p -oc:%:p.exe -S2 -Sg -Un -O1 -Op1   -FuC:\Dev-Pas\units\ -FuC:\Dev-Pas\units\rtl\  -FlC:\Dev-Pas\units\-FlC:\Dev-Pas\units\rtl\ -FDC:\Dev-Pas\bin\ <cr>

	autocmd BufNewFile,Bufread *.pas imap <F2> <esc>:!"%:p:r.exe"<cr>i
	autocmd BufNewFile,Bufread *.pas map <F2> :!"%:p:r.exe"<cr>
	autocmd BufNewFile,Bufread *.pas imap <F9> <esc>:!D:\Jorge\Ephec\Programmation\Pascal\bin\i386-win32\ppc386.exe "%:p" -o"%:p:r.exe" <cr>i
	autocmd BufNewFile,Bufread *.pas map <F9> :!D:\Jorge\Ephec\Programmation\Pascal\bin\i386-win32\ppc386.exe "%:p" -o"%:p:r.exe" <cr>

	"imap <F8> <esc>:!D:\Jorge\Université\Ephec\Programmation\C\gcc\bin\gcc.exe %:p:h\*.c -o %:p:r.exe -I"D:\Jorge\Université\Ephec\Programmation\C\gcc\include"<cr>i
	"map <F8> :!D:\Jorge\Université\Ephec\Programmation\C\gcc\bin\gcc.exe %:p:h\*.c -o %:p:r.exe -I"D:\Jorge\Université\Ephec\Programmation\C\gcc\include"<cr>

	"imap <f8> <esc>:!csc %:p<cr>i
	"map <f8> :!csc %:p<cr>


	"------- FLEX COMPILER -----------------
	"imap <F9> <esc>:!D:\Jorge\Programming\flex\flex\bin\mxmlc.exe -use-network=false -o output.swf -file-specs "%:p"<cr>i
	"map <F9> :!D:\Jorge\Programming\flex\flex\bin\mxmlc.exe -use-network=false -o output.swf -file-specs "%:p"<cr>

	"autocmd BufNewFile,Bufread *.php,*.php3,*.php4 set keywordprg="help"

endfunction

function GvimrcLinux()

	" Make external commands work through a pipe instead of a pseudo-tty
	"set noguipty

	" You can also specify a different font, overriding the default font
	"if has('gui_gtk2')
	"  set guifont=Bitstream\ Vera\ Sans\ Mono\ 12
	"else
	"  set guifont=-misc-fixed-medium-r-normal--14-130-75-75-c-70-iso8859-1
	"endif

	" If you want to run gvim with a dark background, try using a different
	" colorscheme or running 'gvim -reverse'.
	" http://www.cs.cmu.edu/~maverick/VimColorSchemeTest/ has examples and
	" downloads for the colorschemes on vim.org

	" Source a global configuration file if available

    set guifont=Monospace\ 12

	if filereadable("/etc/vim/gvimrc.local")
		source /etc/vim/gvimrc.local
	endif

	source $VIMRUNTIME/mswin.vim
	behave mswin

	call MyGvimrc()
    call Symfony2()

	set tabstop=4
	set shiftwidth=4
	set expandtab

	imap <F2> <esc>:!xterm -hold -e %:p.out<cr>i
	map <F2> :!xterm -hold -e %:p.out<cr>
	"imap <F8> <esc>:!xterm -hold -e echo test<CR>i
	"map <F8> :!xterm -hold -e echo test<CR>
	"imap <F9> <esc>:!xterm -hold -e gcc -o %:p.out %:p<cr>i
	"map <F9> :!xterm -hold -e gcc -o %:p.out %:p<cr>

    "autocmd BufWritePost *.php :!phpcs --standard=/var/www/Claroline/app/build/tools/phpcs.xml %:p
    "autocmd BufWritePost *.js :!jshint --config /var/www/Claroline/app/build/tools/jshint.json %:p

  	autocmd BufNewFile,Bufread *.md imap <F9> <esc>:!google-chrome http://localhost/markdown<cr>i
	autocmd BufNewFile,Bufread *.md map <F9> :!google-chrome http://localhost/markdown<cr>

    autocmd BufNewFile,Bufread *.md set cc=80

    autocmd BufWritePost *.md :silent !cp '%:p' /var/www/markdown/temp.txt

endfunction

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

