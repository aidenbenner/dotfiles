#!/bin/bash

echo Install Software

sudo apt-get update 

# vim-gtk needed for clipboard on ubuntu 
export install="
vim 
vim-gtk 
redshift 
rsibreak 
zsh 
git 
xclip
qpdfview
mpv
tmux
cmake
meld
" 

for f in $install
do  
  sudo apt-get install $f -y 
done


echo Install Vimplug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

mkdir -p ~/.vim/.backup ~/.vim/.swp ~/.vim/.undo
mkdir -p ~/.vim/templates
mkdir -p ~/.vim/colors


echo Install Antigen
git clone https://github.com/zsh-users/antigen ~/.antigen/antigen 

echo Linking files
rm ~/.vimrc_old
mv ~/.vimrc ~/.vimrc_old
ln -sfv $PWD/vimrc ~/.vimrc

rm ~/.vim/templates/comp.old
mv ~/.vim/templates/comp.cc ~/.vim/templates/comp.old
ln -sfv $PWD/comp.cc ~/.vim/templates/comp.cc

rm ~/.gitconfig_old
mv ~/.gitconfig ~/.gitconfig_old
ln -sfv $PWD/gitconfig ~/.gitconfig

rm ~/.tmux_conf.old
mv ~/.tmux.conf ~/.tmux_conf.old
ln -sfv $PWD/tmux.conf ~/.tmux.conf

rm ~/.bash_aliases.old
mv ~/.bash_aliases ~/.bash_aliases.old
ln -sfv $PWD/bash_aliases ~/.bash_aliases

rm ~/.bashrc.old
mv ~/.bashrc ~/.bashrc.old
ln -sfv $PWD/bashrc ~/.bashrc


rm ~/.zshrc.old
mv ~/.zshrc ~/.zshrc.old
ln -sfv $PWD/zshrc ~/.zshrc


sudo chown -R $USER: ~/.vim/

vim +PlugInstall +qall
cp ~/.vim/plugged/tender.vim/colors/tender.vim ~/.vim/colors/tender.vim 

# tmux 
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
tmux source-file ~/.tmux.conf


# make zsh default shell
chsh -s $(which zsh) 

sudo apt-get install python-dev python3-dev
sudo apt-get install build-essential cmake

cd ~/.vim/bundle/YouCompleteMe 
./install.py --clang-completer --tern-completer

