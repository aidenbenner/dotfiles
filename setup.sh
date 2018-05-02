#!/bin/bash

sudo apt install curl

# OMZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# zsh themes
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

echo Install Vimplug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

mkdir -p ~/.vim/.backup ~/.vim/.swp ~/.vim/.undo
mkdir -p ~/.vim/templates
mkdir -p ~/.vim/colors

echo Install Antigen
git clone https://github.com/zsh-users/antigen ~/.antigen/antigen 

sh link.sh 
sudo chown -R $USER: ~/.vim/

vim +PlugInstall +qall
cp ~/.vim/plugged/tender.vim/colors/tender.vim ~/.vim/colors/tender.vim 

# tmux 
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
tmux source-file ~/.tmux.conf

# make zsh default shell
chsh -s $(which zsh) 

git clone https://github.com/powerline/fonts.git
cd fonts 
./install.sh 
cd ..
rm -rf fonts

