#!/bin/bash
echo Install Vimplug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

mkdir -p ~/.vim/.backup ~/.vim/.swp ~/.vim/.undo
mkdir -p ~/.vim/templates
mkdir -p ~/.vim/colors
mv solarized.vim ~/.vim/colors/solarized.vim

sudo chown -R $USER ~/.vim/

echo Linking files
mv ~/.vimrc ~/.vimrc_old
ln -sv $PWD/vimrc ~/.vimrc

mv ~/.vim/templates/comp.cc ~/vim/templates/comp.cc
ln -sv $PWD/comp.cc ~/.vim/templates/comp.cc

mv ~/.gitconfig ~/.gitconfig_old.
ln -sv $PWD/gitconfig ~/.gitconfig

mv ~/.tmux.comf ~/.tmux_comf.old
ln -sv $PWD/tmux.comf ~/.tmux.comf

sudo chown -R $USER ~/.vim/

vim +PlugInstall +qall

