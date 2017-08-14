#!/bin/sh
#

#
# Install Ubuntu packages
#
sudo apt-get install tmux zsh vim git exuberant-ctags build-essential cmake python-dev python3-dev

# Make symlinks
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/zshrc ~/.zshrc
ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/vim ~/.vim

#
# Install vim themes
#
#git clone https://github.com/nanotech/jellybeans.vim.git

# Install vim plugins
#
#git clone https://github.com/vim-airline/vim-airline.git
#git clone https://github.com/tpope/vim-fugitive.git
#git clone https://github.com/ctrlpvim/ctrlp.vim.git
#git clone https://github.com/craigemery/vim-autotag.git
#git clone https://github.com/Valloric/YouCompleteMe.git
#
# git submodule add https://github.com/manasthakur/foo.git pack/plugins/start/foo
#

#
# Update all git submodules
git submodule update --init --recursive

# Compile YouCompleteMe with C/C++ support
cd ~/.vim/pack/plugins/start/YouCompleteMe
./install.py --clang-completer
