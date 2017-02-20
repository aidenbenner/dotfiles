#!/bin/bash
echo Install Vimplug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

mkdir -p ~/.vim/.backup ~/.vim/.swp ~/.vim/.undo
mkdir -p ~/.vim/templates

sudo chown -R $USER ~/.vim/


echo Linking files
mv ~/.vimrc ~/.vimrc_old
ln -sv $PWD/vimrc ~/.vimrc

mv ~/.vim/templates/comp.cc ~/vim/templates/comp.cc
ln -sv $PWD/comp.cc ~/.vim/templates/comp.cc

mv ~/.gitconfig ~/.gitconfig_old.
ln -sv $PWD/gitconfig ~/.gitconfig

vim +PlugInstall +qall

