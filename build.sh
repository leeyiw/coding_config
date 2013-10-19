#!/bin/bash

cd ~
ln -s coding_config/.vimrc .vimrc
ln -s coding_config/.vim .vim
ln -s coding_config/.ctags .ctags

if [ ! -d .cgdb ]
then
	echo "directory '.cgdb' is not exists! forget to install cgdb?"
	exit
else
	cd ~/.cgdb
	ln -s ../coding_config/cgdbrc cgdbrc
fi
