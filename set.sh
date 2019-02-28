#!/bin/bash
set -o errexit

script_dir=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

bak_dir="$HOME/.dotfiles_bak/$(date +%s)"

mkdir -p $bak_dir
mkdir -p $HOME/.vim

if [[ -e $HOME/.tmux.conf ]]; then
    mv $HOME/.tmux.conf $bak_dir
fi

if [[ -e $HOME/.vimrc ]]; then
    mv $HOME/.vimrc $bak_dir
fi

if [[ -d $HOME/.vim/ftplugin ]]; then
    mkdir -p $bak_dir/vim
    mv $HOME/.vim/ftplugin $bak_dir/vim
fi

if [[ -d $HOME/.vim/coc-settings.json ]]; then
    mkdir -p $bak_dir/vim
    mv $HOME/.vim/coc-settings.json $bak_dir/vim
fi

ln -s $script_dir/vim/vimrc $HOME/.vimrc
ln -s $script_dir/tmux/tmux.conf $HOME/.tmux.conf
ln -s $script_dir/vim/ftplugin $HOME/.vim/ftplugin
ln -s $script_dir/vim/coc-settings.json $HOME/.vim/coc-settings.json
