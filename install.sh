#!/bin/bash

mv ~/.zprofile ~/.zprofile-old
ln -s ~/dotfiles/.zprofile ~/.zprofile

cat ~/dotfiles/.gitalias >> ~/.gitconfig
cat ~/dotfiles/.gituser >> ~/.gitconfig
echo -n Z2l0QHN0b3JleS5kZXY= | base64 -D >> ~/.gitconfig

touch ~/dotfiles/command/_local.sh

if ! [ $SPIN ]; then
    mkdir -p ~/dotfiles/script
    mkdir -p ~/dotfiles/data
fi
