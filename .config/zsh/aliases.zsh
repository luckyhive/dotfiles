
setopt complete_aliases

alias ls='ls -la --color=auto'

# dotfiles management
alias dotfiles='git --git-dir=$HOME/personal/git/dotfiles/ --work-tree=$HOME'
compdef dotfiles='git'

#neovim
alias vim=nvim
alias vi=nvim
alias v=nvim

#git
alias branch='git checkout $(git branch -a | fzf)'


