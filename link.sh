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
ln -sfv $PWD/ycm_extra_conf.py ~/.ycm_extra_conf.py

ln -sfv $PWD/gitignore_global ~/.gitignore_global
