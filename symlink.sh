#!/bin/bash

# variables
dotfiles_dir=~/dotfiles


# create dirs
mkdir ~/.config/terminator/

# create symlinks
sudo ln -sf $dotfiles_dir/vimrc ~/.vimrc
sudo ln -sf $dotfiles_dir/bashrc ~/.bashrc
sudo ln -sf $dotfiles_dir/profile ~/.profile
sudo ln -sf $dotfiles_dir/zshrc ~/.zshrc
sudo ln -sf $dotfiles_dir/aliases ~/.bash_aliases
sudo ln -sf $dotfiles_dir/aliases ~/.zsh_aliases
sudo ln -sf $dotfiles_dir/terminator_config ~/.config/terminator/config

