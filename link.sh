echo Linking files

for file in config/*
do
    name=${file##*/}
    # tests if file exists and if so makes a backup
    # suppresses errors
    cp ~/.$name ~/.$name.old 2>> /dev/null
    # symlink
    ln -sfv $PWD/$file ~/.$name
done

#templates
ln -sfv $PWD/templates/comp.cc ~/.vim/templates/comp.cc

# i3
mkdir -p ~/.i3
ln -sfv $PWD/i3/config ~/.i3/config
