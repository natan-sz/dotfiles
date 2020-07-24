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
#For Python Dev
install python3-pip python3-dev build-essential libssl-dev libffi-dev python3-setuptools
install python3-venv

#Vim Plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

#NodeJS (Needed for nvim-coc & cool apps)
curl -sL install-node.now.sh/lts | bash
  2 sudo apt-get install -y nodejs
  3 sudo apt-get install gcc g++ make

#Python Packages
install python3-pip
pip3 install --upgrade setuptools
pip3 install numpy
pip3 install pandas
pip3 install matplotlib
pip3 install requests
pip3 install jedi
