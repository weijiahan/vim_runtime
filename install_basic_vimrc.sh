#!/bin/bash

cd ~/.dotfiles/vim_runtime

echo 'set runtimepath+=~/.dotfiles/vim_runtime

source ~/.dotfiles/vim_runtime/vimrcs/basic.vim
source ~/.dotfiles/vim_runtime/vimrcs/filetypes.vim

try
source ~/.dotfiles/vim_runtime/config.vim
catch
endtry' > ~/.vimrc

echo "Installed the Basic Vim configuration successfully! Enjoy :-)"
