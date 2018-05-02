#!/bin/bash
echo Install Software

sudo add-apt-repository ppa:neovim-ppa/stable -y
sudo apt-get update -y

# vim-gtk needed for clipboard on ubuntu
export install="
git
vim
zsh
tmux
vim-gtk
redshift
i3
xclip
zathura
mpv
cmake
meld
npm
pandoc
"

for f in $install
do
  sudo apt-get install $f -y
done

sudo apt install emacs
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d


