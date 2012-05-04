#!/bin/sh
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle 
git clone git://github.com/wiboshu/vimrc.git ~/.vim_rc
ln -s ~/.vim_rc/vimrc ~/.vimrc
vim +BundleInstall +qall
