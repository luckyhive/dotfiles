
. $ZDOTDIR/path.zsh
. $ZDOTDIR/pluginloader.zsh

load_plugin "https://github.com/zsh-users/zsh-syntax-highlighting.git" zsh-syntax-highlighting "used for syntax highlighting"

. $ZDOTDIR/shrink-path.zsh
. $ZDOTDIR/completions.zsh
. $ZDOTDIR/gitprompt.zsh
. $ZDOTDIR/prompt.zsh
. $ZDOTDIR/aliases.zsh
. $ZDOTDIR/history.zsh

eval "$(ssh-agent -s)"
