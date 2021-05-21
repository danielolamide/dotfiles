#!/bin/bash

echo "Setting up your MacBook"

#Check if HomeBrew exits else install it
if test ! $(which brew); then
 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
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

#Vim Plug Install
echo "Installing Vim Plug"
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

#NVM Install
echo "Installing Node Version Manager"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash

#Creating Dev Directories
mkdir -p  $HOME/Coding/js
mkdir -p  $HOME/.config/nvim
mkdir -p $HOME/.config/alacritty
mkdir -p	$HOME/.oh-my-zsh/custom && touch $HOME/.oh-my-zsh/custom/aliases.zsh
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
# Removes dotfiles form  $HOME (if exists) and symlinks the .dotfiles
#.zshrc
rm -rf $HOME/.zshrc
ln -sv $HOME/.dotfiles/.zshrc $HOME/.zshrc
.gitconfig
rm -rf $HOME/.gitconfig
ln -sv $HOME/.dotfiles/.gitconfig $HOME/.gitconfig
#init.vim
rm -rf $HOME/.config/nvim/init.vim
ln -sv $HOME/.dotfiles/.config/nvim/ $HOME/.config/nvim/
#alacritty
rm -rf $HOME/.config/alacritty/alacritty.yaml
ln -sv $HOME/.dotfiles/.config/alacritty $HOME/.config/alacritty/
#tmux.conf
rm -rf $HOME/.tmux.conf
ln -sv $HOME/.dotfiles/.tmux.conf $HOME
#.zprofile
rm -rf $HOME/.zprofile
ln -sv $HOME/.dotfiles/.zprofile $HOME
#Bin Folder
rm -rf $HOME/bin
ln -sv $HOME/.dotfiles/bin $HOME
#Aliases
rm -rf $HOME/.oh-my-zsh/custom/aliases.zsh
ln -sv $HOME/.dotfiles/.oh-my-zsh/custom/aliases.zsh $HOME/.oh-my-zsh/custom/

#NPM Globals
./npm.sh
# Set macOS preferences
# We will run this last because this will reload the shell
#source .macos
echo "Success"

