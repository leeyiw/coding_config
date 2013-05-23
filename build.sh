#!/bin/bash

cd ~
ln -sT coding_config/.vimrc .vimrc
ln -sT coding_config/.vim .vim
ln -sT coding_config/.ctags .ctags

if [ ! -d .cgdb ]
then
	echo "directory '.cgdb' is not exists! forget to install cgdb?"
	exit
else
	cd ~/.cgdb
	ln -sT ../coding_config/cgdbrc cgdbrc
fi
