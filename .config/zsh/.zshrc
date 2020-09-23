source $HOME/.config/zsh/aliases

## 
## install zsh plugins 
##
for i ($HOME/.config/zsh/ohmyzsh/lib/*.zsh); do
	source $i
done
source $HOME/.config/zsh/ohmyzsh/plugins/shrink-path/shrink-path.plugin.zsh
source $HOME/.config/zsh/ohmyzsh/plugins/command-not-found/command-not-found.plugin.zsh
source $HOME/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh

## PROMPT
setopt prompt_subst
autoload -U colors && colors

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[blue]%}(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

PROMPT='%(?::%{$fg_bold[red]%}!)%{$fg[cyan]%}$(shrink_path -f) %{$fg_bold[green]%}⟩%{$reset_color%} '
RPROMPT='$(git_prompt_info)%{$fg[light_grey]%}$(date +%T)%{$reset_color%}'
