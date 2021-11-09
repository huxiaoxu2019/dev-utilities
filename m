#!/bin/sh

if [ $1 == "w3m" ]
then
    w3m https://linux.die.net/man/1/w3m
elif [ $1 == "tmux" ]
then
    w3m https://man7.org/linux/man-pages/man1/tmux.1.html
elif [ $1 == "xargs" ]
then
    w3m https://man7.org/linux/man-pages/man1/xargs.1.html
else
    w3m https://man7.org/linux/man-pages/man1/${1}.1.html
fi
