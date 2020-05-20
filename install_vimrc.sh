#!/bin/bash

cd ~/.vim_runtime

ctags_dir=~/.ctags.d

if [ ! -d $ctags_dir ];then
   mkdir -p $ctags_dir
fi

cp ~/.vim_runtime/fidl.ctags $ctags_dir

echo 'set runtimepath+=~/.vim_runtime

set runtimepath+=~/.vim_runtime/after

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/vim-plug.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim
source ~/.vim_runtime/vimrcs/which_key_map.vim

try
source ~/.vim_runtime/config.vim
catch
endtry' > ~/.vimrc

echo "Installed the Vim configuration successfully! Enjoy :-)"
