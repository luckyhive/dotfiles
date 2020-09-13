source $HOME/.config/zsh/aliases
source $HOME/.config/zsh/antigeninit.zsh

export PATH=$HOME/bin:$PATH

export VISUAL=vim
export EDITOR=vim

## 
## install zsh plugins with antigen
##
plugins="command-not-found zsh-users/zsh-syntax-highlighting"
theme=robbyrussell

__init_antigen $theme $plugins

