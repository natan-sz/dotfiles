# Linux Mint Configuration Files & Setup Script

Config Files for Linux Mint Cinnamon

# Contents

## dotfiles

* .vimrc
  - html indentation
  - "Ctrl+hjkl" (in insert mode)
  - VimPlug : coc, gruvbox, ctrlp
  - leader key movement between buffers
  - autocompleted brackets
* .bashrc
  - neovim alias
* .bash_profile
  - default
  
## scripts

* symlink.sh
  - Checks for dotfiles and creates symbolic link to the provided ones. 
* aptinstall.sh
  - Adds neovim ppa repository
  - Installs : curl, git, figlet, neovim, rofi, ranger
  - Downloads and Install: VimPlug
* desktop.sh
  - Returns preffered key-bindings
  - Scales the taskbar

## To Do
  - Configure terminal (desktop.sh)
  - Automatically Install Vim Plugins
  - Automatically set background
  - Automatically download and set theme
