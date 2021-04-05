#!/bin/bash
dotdir="$HOME/.dotfiles"

##setup vim
ln -sf $dotdir/.vim/ $HOME/.vim
ln -sf $dotdir/.vimrc $HOME/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

#ln -sf $dotdir/.vim/ $HOME/.vim

##setup tmux
ln -sf $dotdir/.tmux.conf $HOME/.tmux.conf
mkdir -p $HOME/.tmux/plugins
#if "test ! -d ~/.tmux/plugins/tpm" "run 'git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm'"
tmux source $HOME/.tmux.conf
~/.tmux/plugins/tpm/bin/install_plugins

