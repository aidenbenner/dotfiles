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

if [ ! -e "~/.machine_aliases" ]; then
    echo "no machine alises found creating blank"
    touch ~/.machine_aliases
else 
    echo "found machine aliases"
fi

#templates
ln -sfv $PWD/templates/comp.cc ~/.vim/templates/comp.cc

# i3
mkdir -p ~/.i3
ln -sfv $PWD/i3/config ~/.i3/config
