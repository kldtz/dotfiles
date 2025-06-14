# Dotfiles

Repository for configuration files under `$HOME`. 
Setup based on: https://news.ycombinator.com/item?id=11070797.
Assumes you're using [`fish`](https://fishshell.com/).

## Initial setup

This only needs to be done once. 

```fish
# Initialize bare Git repo
git init --bare .cfg
# Create alias with fixed git directory and work tree
alias -s cfg='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
# Don't show untracked files
cfg config --local status.showUntrackedFiles no
# Add .cfg to .gitignore
echo ".cfg" >> .gitignore
```

## Setup on new machine

```fish
# Clone this repo
git clone --bare https://github.com/kldtz/dotfiles.git $HOME/.cfg
# Create alias 
alias -s cfg='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
# Check out 
cfg checkout
# Don't show untracked files
cfg config --local status.showUntrackedFiles no
```
