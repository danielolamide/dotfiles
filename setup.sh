#!/bin/bash

echo "Setting up your MacBook"

#Check if HomeBrew exits else install it
if test ! $(which brew); then
 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi


#.zshrc
rm -rf $HOME/.zshrc
ln -sv $HOME/.dotfiles/.zshrc $HOME/.zshrc
#.zprofile
rm -rf $HOME/.zprofile
ln -sv $HOME/.dotfiles/.zprofile $HOME/.zprofile

#Update HomeBrew
brew update

#Homebrew Bundle Install
brew tap homebrew/bundle
#Install all dependencies in Brewfile in current directory
brew bundle
brew cleanup

#Set default shell as Zsh
chsh -s /usr/local/bin/zsh

#NVM Install
echo "Installing Node Version Manager"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

#Creating Dev Directories
mkdir -p  $HOME/Coding/js
mkdir -p  $HOME/.config
mkdir -p	$HOME/.oh-my-zsh/custom 
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

# Removes dotfiles form  $HOME (if exists) and symlinks the .dotfiles
#.gitconfig
rm -rf $HOME/.gitconfig
ln -sv $HOME/.dotfiles/.gitconfig $HOME/.gitconfig
#nvim
rm -rf $HOME/.config/nvim
ln -sv $HOME/.dotfiles/.config/nvim $HOME/.config/nvim
#alacritty
rm -rf $HOME/.config/alacritty
ln -sv $HOME/.dotfiles/.config/alacritty $HOME/.config/alacritty
#tmux.conf
rm -rf $HOME/.tmux.conf
ln -sv $HOME/.dotfiles/.tmux.conf $HOME
#Bin Folder
rm -rf $HOME/bin
ln -sv $HOME/.dotfiles/bin $HOME
#Aliases
rm -rf $HOME/.oh-my-zsh/custom/aliases.zsh
ln -sv $HOME/.dotfiles/aliases.zsh $HOME/.oh-my-zsh/custom/aliases.zsh

#NPM Globals
./npm.sh
# Set macOS preferences
# We will run this last because this will reload the shell
#source .macos

