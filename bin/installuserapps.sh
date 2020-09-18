#!/bin/sh

sudo apt -y update
sudo apt -y install git vim tmux zsh
sudo apt -y install gnome-keyring

sudo chsh -s /bin/zsh $USER

