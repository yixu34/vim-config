#!/bin/bash

mkdir -p ~/.vim/{ftdetect,indent,syntax}

for d in ftdetect indent syntax ; do
    wget --no-check-certificate -O ~/.vim/$d/scala.vim https://raw.github.com/yixu34/scala-dist/master/tool-support/src/vim/$d/scala.vim;

    wget --no-check-certificate -O ~/.vim/$d/coffee.vim https://raw.github.com/kchmck/vim-coffee-script/master/$d/coffee.vim;

    wget --no-check-certificate -O ~/.vim/$d/nginx.vim https://raw.github.com/yixu34/nginx-vim-syntax/master/$d/nginx.vim;

    wget --no-check-certificate -O ~/.vim/$d/puppet.vim https://raw.github.com/puppetlabs/puppet-syntax-vim/master/$d/puppet.vim;
done

for d in ftdetect syntax; do
    wget --no-check-certificate -O ~/.vim/$d/actionscript.vim https://raw.github.com/jeroenbourgois/vim-actionscript/master/$d/actionscript.vim;

    wget --no-check-certificate -O ~/.vim/$d/proto.vim https://raw.github.com/uarun/vim-protobuf/master/$d/proto.vim
done

cp indent/actionscript.vim ~/.vim/indent
