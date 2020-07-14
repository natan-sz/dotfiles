#!/bin/bash

#Setup Desktop Shortcuts
gsettings set org.cinnamon.desktop.keybindings.wm close "['<Shift><Super>c']"
gsettings set org.cinnamon.desktop.keybindings.media-keys terminal "['<Super>Return']" 
gsettings set org.gnome.metacity.keybindings toggle-tiled-right "['<Super>Right']"
gsettings set org.gnome.metacity.keybindings toggle-tiled-left "['<Super>Left']"

#Setup Taskbar & Scaling
gsettings set org.cinnamon panels-height "['1:49']"

#Setup Terminal size
# To Be completed /etc/default/console-setup
