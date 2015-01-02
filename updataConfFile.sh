#!/bin/sh

cd ~

if [ ! -e conf ] 
then
    git clone https://github.com/udon11/conf.git
fi

cd conf 

git pull

# vimバックアップファイルの置き場
if [ ! -e ~/.vim/backup ] 
then
    mkdir -p ~/.vim/backup
fi

# Neobundle
if [ ! -e ~/.vim/bundle ] 
then
    mkdir -p ~/.vim/bundle
    git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
    echo "setup Neobundle\n"
fi

# colorスキーマ
if [ ! -e ~/.vim/colors ] 
then
    mkdir -p ~/.vim/colors
    cp ~/conf/.vim/colors/hybrid.vim ~/.vim/colors/
    echo "setup color schema\n"
fi

# 各種設定ファイルの配置
cp ~/conf/.bashrc ~
cp ~/conf/.vimrc ~
cp ~/conf/.gvimrc ~
echo 'finish'
