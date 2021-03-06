#!/bin/bash

echo "Setting up your MacBook"

#Check if HomeBrew exits else install it
if test ! $(which brew); then
 x /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

#Update HomeBrew
brew update

#Homebrew Bundle Install
brew tap homebrew/bundle
#Install all dependencies in Brewfile in current directory
brew bundle
brew cleanup

#Set default shell as Zsh
chsh -s /usr/local/bin/zsh

#Oh-My-Zsh installation
echo "Installing Oh-My-Zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#Vim-plug installation
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

#Creating Dev Directories
mkdir $HOME/Coding
mkdir $HOME/Coding/js

# Removes dotfiles form  $HOME (if exists) and symlinks the .dotfiles
rm -rf $HOME/.zshrc
ln -sv $HOME/.dotfiles/.zshrc $HOME/.zshrc
rm -rf $HOME/.oh-my-zsh
ln -sv $HOME/.dotfiles/.oh-my-zsh  $HOME/.oh-my-zsh
rm -rf $HOME/.gitconfig
ln -sv $HOME/.dotfiles/.gitconfig $/HOME/.gitconfig
rm -rf $HOME/.config/nvim/init.vim
ln -sv $HOME/.dotfiles/.config/nvim/init.vim $HOME/.config/nvim/init.vim
rm -rf $HOME/.tmux.conf
ln -sv $HOME/.dotfiles/.tmux.conf $HOME
rm -rf $HOME/.zprofile
ln -sv $HOME/.dotfiles/.zprofile $HOME
rm -rf $HOME/bin
ln -sv $HOME/.dotfiles/bin $HOME
