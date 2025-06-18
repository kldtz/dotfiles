#!/bin/bash

if [ -z "$NOTES" ]; then
  echo "Please set \$NOTES to your notes directory path!"
  exit 1
fi

# Index file
index="${NOTES}/.index.tsv"

# No options or arguments
if [ "$#" -lt 1 ]; then
  file=`fzf +i < "$index" | cut -f1`
  hx "${NOTES}/$file"
  exit 0
fi

# Parse options
if [ "$1" == "-d" ]; then
  delete="true"
  shift
fi

# Fuzzy-find and delete if '-d' and no other arguments
if [ -n $delete ] && [ "$#" -lt 1 ]; then
  file=`fzf +i < "$index" | cut -f1`
  rm "${NOTES}/$file"
  sed -i "/^${file}/d" "$index"
  exit 0
fi


# Read arguments
title="$1"
shift
tags=`echo "$*" | tr '[:lower:]' '[:upper:]'`
# Default tag
if [ -z "$tags" ]; then
  tags='?'
fi


function create_note() {
  day=`date -Idate`
  cat > "$path" <<- EOM
# $title
  

EOM

  printf "${file}\t${day}\t${tags}\n" >> "$index"
}

# Generate path from normalized title
normalized_title=`echo "$title" | tr '[:upper:]' '[:lower:]' | tr -cs '[:alnum:]' '-' | tr -s - | sed -E 's/(-+$|^-+)//g'`
file="${normalized_title}.md"
path="${NOTES}/${file}"


if [ -z $delete ]; then
  if ! [ -f "$path" ]; then
    create_note
    hx "${path}:3"
  else 
    hx "$path"
  fi
else
  if [ -f "$path" ]; then
    rm "$path"
    sed -i "/^${file}/d" "$index"
  else
    echo "Cannot delete non-existent file ${file}!"
    exit 1
  fi
fi

