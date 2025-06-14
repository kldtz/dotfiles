export PATH="$PATH:/home/tobias/.local/share/coursier/bin:/usr/local/go/bin:/home/tobias/go/bin"

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME
set -gx PATH $HOME/.cabal/bin $PATH /home/tobias/.ghcup/bin # ghcup-env

direnv hook fish | source
