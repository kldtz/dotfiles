#!/bin/bash
# Quick and dirty Git save if you don't care at all.
# Adds all changes from repo under given path, commits with generic message, and pushes upstream.

if [ $# -ne 1 ]; then
	echo "Expected exactly one argument!"
	echo "Usage: push <path>"
fi

git -C $1 add .
git -C $1 commit -m "Update"
git -C $1 push


