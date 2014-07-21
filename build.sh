#!/bin/bash

cd ~

if [ -L .vimrc ]
then
	rm .vimrc
fi
ln -s coding_config/.vimrc .vimrc

if [ -L .vim ]
then
	rm .vim
fi
ln -s coding_config/.vim .vim

if [ -L .ctags ]
then
	rm .ctags
fi
ln -s coding_config/.ctags .ctags

if [ ! -d .cgdb ]
then
	if command -v cgdb > /dev/null 2>&1
	then
		mkdir .cgdb
	else
		echo "directory '.cgdb' is not exists! forget to install cgdb?"
		exit
	fi
fi
cd ~/.cgdb
if [ -L cgdbrc ]
then
	rm cgdbrc
fi
ln -s ../coding_config/cgdbrc cgdbrc
