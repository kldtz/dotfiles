#!/bin/bash

if [ $# -ne 1 ]; then
	echo "Expected exactly one argument!"
	echo "Usage: pull <path>"
fi

git -C $1 pull


