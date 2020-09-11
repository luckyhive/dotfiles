source $HOME/.config/zsh/aliases

export PATH=$HOME/bin:$PATH


## 
## install zsh plugins with antigen
##
source $HOME/.config/zsh/antigen.zsh
export ADOTDIR=$HOME/.config/zsh/antigenrepo
mkdir -p $ADOTDIR

plugins=(command-not-found zsh-users/zsh-syntax-highlighting)
theme=robbyrussell

antigen use oh-my-zsh
for plugin in $plugins
do
	antigen bundle $plugin || true
done
antigen theme $theme
antigen apply

