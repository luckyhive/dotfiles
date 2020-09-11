#!/bin/sh

sudo apt -y update
sudo apt -y install git vim tmux zsh

sudo chsh -s /bin/zsh $USER

