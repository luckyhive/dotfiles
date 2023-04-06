
alias ls='ls -la --color=auto'

# dotfiles management
alias dotfiles='git --git-dir=$HOME/git/dotfiles/ --work-tree=$HOME'

#neovim
alias vim=nvim
alias vi=nvim
alias v=nvim

#git
alias branch='git checkout $(git branch -a | fzf)'


