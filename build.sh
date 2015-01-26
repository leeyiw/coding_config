#!/bin/bash

cd ~

# 将repo中的submodule全部更新后再进行其他操作
echo -n "Updating submodules...                 "
git -C ~/coding_config submodule init
git -C ~/coding_config submodule update
echo "Done!"

# 安装Vim配置文件及插件
echo -n "Installing Vim plugins...              "
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
echo "Done!"

echo -n "Installing configuration for Ctags...  "
if [ -L .ctags ]
then
	rm .ctags
fi
ln -s coding_config/.ctags .ctags
echo "Done!"

echo -n "Installing configuration for CGDB...   "
# 安装CGDB的配置文件
if [ ! -d ~/.cgdb ]
then
	if command -v cgdb >/dev/null 2>&1
	then
		mkdir ~/.cgdb
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
echo "Done!"

echo -n "Installing configuration for SSH...   "
# 安装SSH的配置文件
if [ ! -d ~/.ssh ]
then
    mkdir ~/.ssh
fi
cd ~/.ssh
if [ -e config ]
then
	rm config
fi
ln -s ../coding_config/ssh_config config
echo "Done!"
