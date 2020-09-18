source $HOME/.config/zsh/aliases

export PATH=$HOME/bin:$PATH

export VISUAL=vim
export EDITOR=vim

## 
## install zsh plugins 
##
source $HOME/.config/zsh/ohmyzsh/lib/git.zsh
source $HOME/.config/zsh/ohmyzsh/plugins/shrink-path/shrink-path.plugin.zsh
source $HOME/.config/zsh/ohmyzsh/plugins/command-not-found/command-not-found.plugin.zsh
source $HOME/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh

## PROMPT
setopt prompt_subst
autoload -U colors && colors
PROMPT="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
PROMPT+='%{$fg[cyan]%}$(shrink_path -f)%{$reset_color%} $(git_prompt_info)>'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

