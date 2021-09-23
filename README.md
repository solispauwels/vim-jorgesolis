Jorge Solis VIM configuration
=============================

Install
----------------

    mkdir ~/.vim/pack
    cd ~/.vim/pack
    git clone --recurse-submodules https://github.com/solispauwels/vim-jorgesolis.git

Powerline Fonts
---------------

    wget -O ~/.fonts/Droid+Sans+Mono+for+Powerline.otf https://raw.github.com/Lokaltog/powerline-fonts/master/DroidSansMono/Droid%20Sans%20Mono%20for%20Powerline.otf

vimrc & gvimrc
--------------

    ln -sf ~/.vim/pack/vim-jorgesolis/vimrc ~/.vimrc

Markdown Edit
-------------

    npm install -g flavored-markdown
