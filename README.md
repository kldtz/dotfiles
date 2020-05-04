# Dotfiles

Repository for configuration files under HOME. Setup based on: https://news.ycombinator.com/item?id=11070797

## Setup on new machine

* Clone repo: `git clone --bare https://github.com/kldtz/dotfiles.git $HOME/.dotfiles`
* Define alias for Git with work tree under HOME: `alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'`
* Checkout content into work tree: `dotfiles checkout`
* Configure Git to not show untracked files in this repo: `dotfiles config --local status.showUntrackedFiles no`
