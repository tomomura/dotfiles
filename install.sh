#!/bin/bash

VIM_DOT_FILES=( .vimrc .vim )

for file in ${VIM_DOT_FILES[@]}
do
    ln -s $HOME/dotfiles/vim/$file $HOME/$file
done

ZSH_DOT_FILES=( .zshrc .zshrc.custom )

for file in ${ZSH_DOT_FILES[@]}
do
    ln -s $HOME/dotfiles/zsh/$file $HOME/$file
done

ZSH_DOT_FILES=( .tmux.conf )

for file in ${ZSH_DOT_FILES[@]}
do
    ln -s $HOME/dotfiles/tmux/$file $HOME/$file
done

GIT_DOT_FILES=( .gitconfig .gitignore )

for file in ${GIT_DOT_FILES[@]}
do
    ln -s $HOME/dotfiles/git/$file $HOME/$file
done

# install oh-my-zsh
[ ! -d ~/.oh-my-zsh ] && git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

[ ! -d ~/.vim/bundle ] && mkdir -p ~/.vim/bundle && git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim && vim -c ':NeoBundleInstall'

