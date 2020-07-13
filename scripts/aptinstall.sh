#!/bin/bash

#Adding PPA Repository + apt get update
sudo apt-add-repository ppa:neovim-ppa/stable
sudo apt update

#Function to pick which software to install
function install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    sudo apt install -y $1
  else
    echo "Already installed: ${1}"
  fi
}

#Basic Programs
install curl
install git
install figlet
install neovim
install rofi
install ranger

#Vim Plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

