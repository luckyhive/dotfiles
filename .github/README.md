## checkout

```shell
cd
mkdir -p git
git clone --bare git@github.com:luckyhive/dotfiles.git git/dotfiles
alias config='git --git-dir=$HOME/git/dotfiles/ --work-tree=$HOME'
config checkout
config submodule init
config submodule checkout
```
