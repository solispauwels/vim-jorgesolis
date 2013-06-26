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

	"imenu Symphony.GenerateBundle <esc>!php D:\Jorge\Programming\Symfony\app\console generate:bundle <cr>i
	"menu Symphony.GenerateBundle :!php D:\Jorge\Programming\Symfony\app\console generate:bundle <cr>
	"imenu Symfony.ClearCache <esc>:!php D:\Jorge\Programming\Symfony\app\console cache:clear <cr>i
	"menu Symfony.ClearCache :!php D:\Jorge\Programming\Symfony\app\console cache:clear <cr>

endfunction
