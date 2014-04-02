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
    git clone https://github.com/msanders/snipmate.vim
    git clone https://github.com/nathanaelkane/vim-indent-guides

Powerline Fonts
---------------

    curl -so ~/.fonts/Droid+Sans+Mono+for+Powerline.otf https://raw.github.com/Lokaltog/powerline-fonts/master/DroidSansMono/Droid%20Sans%20Mono%20for%20Powerline.otf

vimrc & gvimrc
--------------

    ln -sf ~/.vim/bundle/vim-jorgesolis/vimrc ~/.vimrc
    ln -sf ~/.vim/bundle/vim-jorgesolis/gvimrc ~/.gvimrc

Markdown Edit
-------------

    cd /var/www/
    git clone https://github.com/solispauwels/markdown
