#!/bin/sh
if [ ! -e "$HOME/.urbanterror" ]; then mkdir $HOME/.urbanterror; fi
cd /opt/urbanterror/
exec ./ioUrTded +set fs_homepath $HOME/.urbanterror $*
