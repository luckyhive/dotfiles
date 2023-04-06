#!/usr/bin/env bash

# check basic programs/tools are installed 
echo "check basic programs/tools are installed" 

function check_installation {
	PROGRAM=$1

	which "$PROGRAM" > /dev/null && return 0

	echo "please make sure to install $PROGRAM"
	exit 1
}

BASIC_TOOLS=(unzip curl alacritty tmux nvim fzf docker docker-compose)
if [ "$(uname -s)" == "Darwin" ]; then
	BASIC_TOOLS+=(brew)
else	
	BASIC_TOOLS+=(fc-cache)
fi


for i in "${BASIC_TOOLS[@]}"
do
	check_installation "$i"
done
echo "basic programs/tools are installes :)"

# install nerdfont
if [ "$(uname -s)" == "Darwin" ]; then
	brew tap homebrew/cask-fonts
	brew install --cask font-jetbrains-mono-nerd-font
else
	NERDFONT_TEST_FILE="JetBrains Mono Regular Nerd Font Complete Mono.ttf"
	NERDFONT_ZIP_FILE="JetBrainsMono.zip"
	NERDFONT_DOWNLOAD_LINK="https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/$NERDFONT_ZIP_FILE"
	LOCAL_FONT_DIR="$HOME/.local/share/fonts"
	[ ! -f "$LOCAL_FONT_DIR/$NERDFONT_TEST_FILE" ] && (
		echo "installing nerdfonts"
		mkdir -p "$LOCAL_FONT_DIR"
		mkdir -p /tmp/installfonts
		cd /tmp/installfonts
		curl -L -o "$NERDFONT_ZIP_FILE" "$NERDFONT_DOWNLOAD_LINK"
		unzip $NERDFONT_ZIP_FILE -d "$LOCAL_FONT_DIR"
       		rm -rf /tmp/installfonts
		fc-cache -f -v
	)
fi

# install alacritty themes
ALACRITTY_THEMES_DIR="$HOME/.config/alacritty/themes"
ALACRITTY_THEMES_REPO="https://github.com/rajasegar/alacritty-themes.git"
[ ! -d "$ALACRITTY_THEMES_DIR" ] && (
	echo "installing alacritty themes"
	mkdir -p "$ALACRITTY_THEMES_DIR"
	git clone "$ALACRITTY_THEMES_REPO" "$ALACRITTY_THEMES_DIR"
)

