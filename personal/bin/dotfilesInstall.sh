#!/usr/bin/env bash

## usage:
#
#	curl https://raw.githubusercontent.com/luckyhive/dotfiles/master/personal/bin/dotfilesInstall.sh | bash

DOTFILES_PARENT=$HOME/personal/git
[ ! -d "$DOTFILES_PARENT/dotfiles" ] && (
	mkdir -p $DOTFILES_PARENT
	git clone --bare https://github.com/luckyhive/dotfiles.git $DOTFILES_PARENT/dotfiles
	cd $HOME
	git --git-dir=$HOME/personal/git/dotfiles/ --work-tree=$HOME checkout
	git --git-dir=$HOME/personal/git/dotfiles/ --work-tree=$HOME config --local status.showUntrackedFiles no
)

