#!/bin/bash
mkdir ~/.ssh
echo "Follow the steps to generate an ssh key"
ssh-keygen -t rsa -b 4096 -C "aiden.benner@gmail.com"
ssh-add ~/.ssh/id_rsa
sudo apt-get install xclip
xclip -sel clip < ~/.ssh/id_rsa.pub
echo "New ssh key copy to clipboard"
