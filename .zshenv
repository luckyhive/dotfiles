export ZDOTDIR=$HOME/.config/zsh
export ADOTDIR=$ZDOTDIR
export XTERM=alacritty
export EDITOR=nvim
export VISUAL=nvim
export PATH=$HOME/bin:$PATH

if test -n "$DESKTOP_SESSION" ; then
	eval $(gnome-keyring-daemon --start)
	export SSH_AUTH_SOCK
fi
