#!/bin/bash
sed '1,478!d' vimrc | grep "^[a-z]\{1,7\}map\|^let\|^set\|^command\|^syntax" > vrapperrc
