function r
    cd "$REPOS/$(ls -1 "$REPOS" | fzf --reverse)"
end
