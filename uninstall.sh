#!/bin/bash

DOT_FILES=( .vimrc .vim .zshrc .zshrc.custom .tmux.conf .gitconfig .gitignore )

for file in ${DOT_FILES[@]}
do
    rm $HOME/$file
done

rm -rf ~/.oh-my-zsh ~/.vim/bundle
