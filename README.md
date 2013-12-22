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
    git clone https://github.com/scrooloose/nerdtree.git
    git clone https://github.com/kien/ctrlp.vim.git
    git clone https://github.com/bling/vim-airline.git
    git clone https://github.com/jistr/vim-nerdtree-tabs.git
    git clone https://github.com/tokutake/twig-indent.git
    git clone https://github.com/plasticboy/vim-markdown.git
    git clone https://github.com/solispauwels/vim-jorgesolis.git
    git clone https://github.com/groenewege/vim-less.git

vimrc
-----

```vim
execute pathogen#infect()

let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': ['php', 'javascript'] }
let g:syntastic_php_phpcs_args="--report=csv --standard=/var/www/Claroline/app/dev/config/phpcs.xml"
let g:syntastic_php_phpmd_post_args="text /var/www/Claroline/app/dev/config/phpmd.xml"
let g:syntastic_php_checkers=['php', 'phpcs', 'phpmd']
let g:syntastic_javascript_jshint_conf="/var/www/Claroline/app/dev/config/jshint.json"
let g:syntastic_javascript_checkers=['jshint']
let g:ctrlp_match_window = 'top,order:btt,min:1,max:10,results:10'
let g:airline_powerline_fonts = 1
let NERDTreeShowHidden=1
```

gvimrc
------

```vim
call GvimrcLinux()
```

Powerline Fonts
---------------

```sh
curl -so ~/.fonts/Droid%20Sans%20Mono%20for%20Powerline.otf https://github.com/Lokaltog/powerline-fonts/blob/master/DroidSansMono/Droid%20Sans%20Mono%20for%20Powerline.otf?raw=true
```
