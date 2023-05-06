#!/usr/bin/env bash

DOTFILES_PARENT=$HOME/personal/git
[ ! -d "$DOTFILES_PARENT/dotfiles" ] && (
	mkdir -p $DOTFILES_PARENT
	git clone --bare https://github.com/luckyhive/dotfiles.git $DOTFILES_PARENT/dotfiles
	cd $HOME
	dotfiles checkout
	dotfiles config --local status.showUntrackedFiles no
)

