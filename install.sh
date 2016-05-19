#!/bin/bash

echo "Create .vimrc symbolic link"
ln -s ~/.vim/vimrc ~/.vimrc

echo "Pull all submodules"
git pull && git submodule init && git submodule update && git submodule status
