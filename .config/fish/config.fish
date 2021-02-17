
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /home/tobias/miniconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

# Load key in environment variable
set -x GITLAB_PRIV_KEY (cat /home/tobias/.ssh/bitbucket | base64 -w0)

