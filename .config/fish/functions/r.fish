function r
    set dir $(ls -1 "$REPOS" | fzf --reverse)
    cd "$REPOS/$dir"
end
