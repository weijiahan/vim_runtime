#!/bin/bash

cd ~/.dotfiles/vim_runtime

ctags_dir=~/.ctags.d

if [ ! -d $ctags_dir ];then
   mkdir -p $ctags_dir
fi

cp ~/.dotfiles/vim_runtime/fidl.ctags $ctags_dir

echo 'set runtimepath+=~/.dotfiles/vim_runtime

set runtimepath+=~/.dotfiles/vim_runtime/after

source ~/.dotfiles/vim_runtime/vimrcs/basic.vim
source ~/.dotfiles/vim_runtime/vimrcs/filetypes.vim
source ~/.dotfiles/vim_runtime/vimrcs/vim-plug.vim
source ~/.dotfiles/vim_runtime/vimrcs/plugins_config.vim
source ~/.dotfiles/vim_runtime/vimrcs/extended.vim
source ~/.dotfiles/vim_runtime/vimrcs/which_key_map.vim

try
source ~/.dotfiles/vim_runtime/config.vim
catch
endtry' > ~/.vimrc

echo "Installed the Vim configuration successfully! Enjoy :-)"
