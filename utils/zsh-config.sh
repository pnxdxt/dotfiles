#!/bin/sh

# Make sure you are using zsh 
chsh -s /bin/zsh

# remove old zsh files if 
rm -rf ${HOME}/.zsh-config
rm -rf ${HOME}/.zinit
rm -rf ${HOME}/.zlogin
rm -rf ${HOME}/.zprofile
rm -rf ${HOME}/.zshenv
rm -rf ${HOME}/.zshrc

# get to the home folder link zsh-config to home
ln -sf ${HOME}/.dotfiles/zsh-config ${HOME}/.zsh-config
# then link the startup files
zsh ${HOME}/.zsh-config/bootstrap.sh

echo "Shell restart needed"

mkdir -p ~/.config && ln -s ~/.dotfiles/tilde/starship.toml ~/.config/