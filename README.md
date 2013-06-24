Jorge Solis VIM configuration
=============================

Pathogen
--------

    mkdir -p ~/.vim/autoload ~/.vim/bundle
    curl -so ~/.vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

Pathogen bundles
----------------

    cd ~/.vim/bundle
    git clone https://github.com/scrooloose/syntastic.git
    git clone https://github.com/tokutake/twig-indent.git
    git clone https://github.com/plasticboy/vim-markdown.git
    git clone https://github.com/solispauwels/vim-jorgesolis.git

vimrc
-----

```vim
execute pathogen#infect()

let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': ['php', 'javascript'] }
let g:syntastic_php_phpcs_args="--report=csv --standard=/var/www/Claroline/app/build/tools/phpcs.xml"
let g:syntastic_php_phpmd_post_args="text /var/www/Claroline/app/build/tools/phpmd.xml"
let g:syntastic_php_checkers=['php', 'phpcs', 'phpmd']
let g:syntastic_javascript_jshint_conf="/var/www/Claroline/app/build/tools/jshint.json"
let g:syntastic_javascript_checkers=['jshint']
```

gvimrc
------

```vim
call GvimrcLinux()
```
