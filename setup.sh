#!/bin/bash

mkdir -p ~/.vim/{ftdetect,indent,syntax}

for d in ftdetect indent syntax ; do
    wget --no-check-certificate -O ~/.vim/$d/scala.vim https://raw.github.com/scala/scala-dist/master/tool-support/src/vim/$d/scala.vim;

    wget --no-check-certificate -O ~/.vim/$d/coffee.vim https://raw.github.com/kchmck/vim-coffee-script/master/$d/coffee.vim;
done

for d in ftdetect syntax; do
    wget --no-check-certificate -O ~/.vim/$d/actionscript.vim https://raw.github.com/jeroenbourgois/vim-actionscript/master/$d/actionscript.vim;
done

cp indent/actionscript.vim ~/.vim/indent
