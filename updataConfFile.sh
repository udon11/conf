#!/bin/sh

cd ~

if [ ! -e conf ] 
then
    git clone https://github.com/udon11/conf.git
fi

cd conf 

git pull

cp ~/conf/* ~

cd ~

rm README.md updataConfFile.sh
