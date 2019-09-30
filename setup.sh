#!/bin/bash

DOT_FILES=( .zshrc .aliases.zsh .gitconfig )

for file in ${DOT_FILES[@]}
do
  ln -s $(ghq root)/github.com/uknmr/dotfiles/$file $HOME/$file
done
