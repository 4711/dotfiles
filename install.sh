#!/usr/bin/env bash

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

curl https://raw.github.com/4711/dotfiles/.vimrc       > ~/.vimrc
curl https://raw.github.com/4711/dotfiles/.vimrc.local > ~/.vimrc.local

