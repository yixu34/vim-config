#!/bin/bash

VIM_BASE_DIR=~/.config/nvim

mkdir -p $VIM_BASE_DIR/{ftdetect,indent,syntax}

for d in ftdetect indent syntax ; do
    wget --no-check-certificate -O $VIM_BASE_DIR/$d/scala.vim https://raw.githubusercontent.com/yixu34/scala-dist/master/tool-support/src/vim/$d/scala.vim;

    wget --no-check-certificate -O $VIM_BASE_DIR/$d/coffee.vim https://raw.githubusercontent.com/kchmck/vim-coffee-script/master/$d/coffee.vim;

    wget --no-check-certificate -O $VIM_BASE_DIR/$d/nginx.vim https://raw.githubusercontent.com/yixu34/nginx-vim-syntax/master/$d/nginx.vim;

    wget --no-check-certificate -O $VIM_BASE_DIR/$d/puppet.vim https://raw.githubusercontent.com/puppetlabs/puppet-syntax-vim/master/$d/puppet.vim;

    wget --no-check-certificate -O $VIM_BASE_DIR/$d/terraform.vim https://raw.githubusercontent.com/hashivim/vim-terraform/master/$d/terraform.vim;
done

for d in ftdetect syntax; do
    wget --no-check-certificate -O $VIM_BASE_DIR/$d/actionscript.vim https://raw.githubusercontent.com/jeroenbourgois/vim-actionscript/master/$d/actionscript.vim;

    wget --no-check-certificate -O $VIM_BASE_DIR/$d/proto.vim https://raw.githubusercontent.com/uarun/vim-protobuf/master/$d/proto.vim;

    wget --no-check-certificate -O $VIM_BASE_DIR/$d/thrift.vim https://raw.githubusercontent.com/solarnz/thrift.vim/master/$d/thrift.vim;
done

cp indent/actionscript.vim $VIM_BASE_DIR/indent
