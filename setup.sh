#!/bin/bash
echo Install Vimplug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

mkdir ~/.vim/.backup ~/.vim/.swp ~/.vim/.undo

echo Linking files
mv ~/.vimrc ~/.vimrc_old
ln -sv $PWD/vimrc ~/.vimrc

mv ~/.gitconfig ~/.gitconfig_old.
ln -sv $PWD/gitconfig ~/.gitconfig

vim +PlugInstall +qall

