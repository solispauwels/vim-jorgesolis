Jorge Solis VIM configuration
=============================

Pathogen
--------

    mkdir -p ~/.vim/autoload ~/.vim/bundle
    curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

Pathogen bundles
----------------

    cd ~/.vim/bundle
    git clone https://github.com/scrooloose/syntastic.git
    git clone https://github.com/scrooloose/nerdtree.git
    git clone https://github.com/kien/ctrlp.vim.git
    git clone https://github.com/bling/vim-airline.git
    git clone https://github.com/jistr/vim-nerdtree-tabs.git
    git clone https://github.com/plasticboy/vim-markdown.git
    git clone https://github.com/solispauwels/vim-jorgesolis.git
    git clone https://github.com/groenewege/vim-less.git
    git clone https://github.com/msanders/snipmate.vim
    git clone https://github.com/nathanaelkane/vim-indent-guides
    git clone https://github.com/ciaranm/detectindent
    git clone https://github.com/vim-airline/vim-airline-themes
    git clone https://github.com/dreadnaut/vim-bargreybars.git

Powerline Fonts
---------------

    wget -O ~/.fonts/Droid+Sans+Mono+for+Powerline.otf https://raw.github.com/Lokaltog/powerline-fonts/master/DroidSansMono/Droid%20Sans%20Mono%20for%20Powerline.otf

vimrc & gvimrc
--------------

    ln -sf ~/.vim/bundle/vim-jorgesolis/vimrc ~/.vimrc
    ln -sf ~/.vim/bundle/vim-jorgesolis/gvimrc ~/.gvimrc

Markdown Edit
-------------

    npm install -g flavored-markdown
