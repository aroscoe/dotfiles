#!/usr/bin/env bash
# 
# "borrowed" from Justin Lilly (http://github.com/justinlilly/jlilly-bashy-dotfiles/blob/master/)
 
shopt -s dotglob # shows dots in file globbing
 
for i in *; do
ln -s `pwd`/$i $HOME/$i
done
rm $HOME/symlink_files.sh
