#!/bin/bash

echo "Pull all submodules"
git pull && git submodule init && git submodule update && git submodule status

echo "Create .vimrc symbolic link"
ln -s ~/.vim/vimrc ~/.vimrc

echo "Install fonts for airline"
`~/.vim/vimrc/fonts/install.sh`

echo "Make the terminal colors look like in GVim,"
echo "which means making it 256-colors."
if [ "$TERM" == "xterm" ]; then
 	 read -r -d '' termVar << eos
if [ "$TERM" == "xterm" ]; then
    # No it isn't, it's gnome-terminal
    export TERM=xterm-256color
fi
eos
    # No it isn't, it's gnome-terminal
	 printf "%s" "$termVar">>~/.bashrc
fi
