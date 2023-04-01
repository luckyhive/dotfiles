#!/usr/bin/env bash

# check basic programs/tools are installed 
echo "check basic programs/tools are installed" 

function check_installation {
	PROGRAM=$1

	which "$PROGRAM" > /dev/null && return 0

	echo "please make sure to install $PROGRAM"
	exit 1
}

BASIC_TOOLS=(unzip curl fc-cache alacritty)
for i in "${BASIC_TOOLS[@]}"
do
	check_installation "$i"
done
echo "basic programs/tools are installes :)"

# install nerdfont
NERDFONT_TEST_FILE="JetBrains Mono Regular Nerd Font Complete Mono.ttf"
NERDFONT_ZIP_FILE="JetBrainsMono.zip"
NERDFONT_DOWNLOAD_LINK="https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/$NERDFONT_ZIP_FILE"
LOCAL_FONT_DIR="$HOME/.local/share/fonts"
[ ! -f "$LOCAL_FONT_DIR/$NERDFONT_TEST_FILE" ] && (

	mkdir -p "$LOCAL_FONT_DIR"
	mkdir -p /tmp/installfonts
	cd /tmp/installfonts
	curl -L -o "$NERDFONT_ZIP_FILE" "$NERDFONT_DOWNLOAD_LINK"
	unzip $NERDFONT_ZIP_FILE -d "$LOCAL_FONT_DIR"
       	rm -rf /tmp/installfonts
	fc-cache -f -v
)

