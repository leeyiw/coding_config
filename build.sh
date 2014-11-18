#!/bin/bash

cd ~

# 将repo中的submodule全部更新后再进行其他操作
git -C ~/coding_config submodule init
git -C ~/coding_config submodule update

# 安装Vim配置文件及插件
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

# 安装CGDB的配置文件
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
