source $HOME/.config/zsh/aliases

export PATH=$HOME/bin:$PATH

export VISUAL=vim
export EDITOR=vim

## 
## install zsh plugins with antigen
##
export plugins="command-not-found zsh-users/zsh-syntax-highlighting"
export theme=robbyrussell
source $HOME/.config/zsh/antigeninit.zsh

