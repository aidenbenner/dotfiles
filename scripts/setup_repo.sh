#!/bin/bash

sudo apt install curl
sudo apt install git

mkdir ~/.ssh
echo "Follow the steps to generate an ssh key"
ssh-keygen -t rsa -b 4096 -C "aiden.benner@gmail.com"
ssh-add ~/.ssh/id_rsa
sudo apt-get install xclip
xclip -sel clip < ~/.ssh/id_rsa.pub
cat ~/.ssh/id_rsa.pub
read -n "New ssh key copy to add it to github and press anykey"
git clone git@github.com:aidenbenner/dotfiles.git
