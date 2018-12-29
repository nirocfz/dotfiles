#!/bin/bash
set -o errexit

script_dir=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

bak_dir="$HOME/.dotfiles_bak/$(date +%s)"

mkdir -p $bak_dir

if [[ -e $HOME/.tmux.conf ]]; then
    mv $HOME/.tmux.conf $bak_dir
fi

if [[ -e $HOME/.vimrc ]]; then
    mv $HOME/.vimrc $bak_dir
fi

if [[ -d $HOME/.vim/ftplugin ]]; then
    mkdir $bak_dir/vim
    mv $HOME/.vim/ftplugin $bak_dir/vim
fi

ln -s $script_dir/vim/vimrc $HOME/.vimrc
ln -s $script_dir/tmux/tmux.conf $HOME/.tmux.conf
ln -s $script_dir/vim/ftplugin $HOME/.vim/ftplugin
