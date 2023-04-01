PLUGIN_DIR=$ZDOTDIR/plugins

function load_plugin {
	REPOSITORY=$1
	NAME=$2
	DESCRIPTION=$3

	[ ! -d "$PLUGIN_DIR" ] && (
		echo "creating plugin directory"
		mkdir -p $PLUGIN_DIR
	)
	[ ! -d "$PLUGIN_DIR/$NAME" ] && (
		echo "Installing plugin $NAME from $REPOSITORY for $DESCRIPTION"
		git clone "$1" "$PLUGIN_DIR/$NAME"
	)
	source "$PLUGIN_DIR/$NAME/${NAME}.zsh"			
}
