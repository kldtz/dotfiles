# Defined in - @ line 1
function dotfiles --wraps='/usr/bin/git --git-dir=/home/tobias/.dotfiles/ --work-tree=/home/tobias' --description 'alias dotfiles /usr/bin/git --git-dir=/home/tobias/.dotfiles/ --work-tree=/home/tobias'
  /usr/bin/git --git-dir=/home/tobias/.dotfiles/ --work-tree=/home/tobias $argv;
end
