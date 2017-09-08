echo Linking files

for file in config/*
do
	name=${file##*/}
  # tests if file exists and if so makes a backup
  # suppresses errors
	cp ./.$name ./.$name.old 2>> /dev/null
  # symlink
	ln -sfv $PWD/$file ~/.$name
done
