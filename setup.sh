#!/bin/bash
echo Install Vimplug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


echo Create vim backup directories
mkdir -p ~/.vim/{backup_files,swap_files,undo_files}

echo Linking files
ln -sv $PWD/vimrc ~/.vimrc

