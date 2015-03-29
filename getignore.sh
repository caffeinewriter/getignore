#!/bin/sh
PWD_GITIGNORE="$(pwd)/.gitignore"
if [ -z "$1" ]; then
  echo "Usage: $0 <gitignore name>"
  echo "Example gitignore names: Node, Android, Grails"
  echo "Check https://github.com/github/gitignore for a complete and updated list."
elif [ ! -f $PWD_GITIGNORE ]; then 
  echo "Getting $1.gitignore"
  curl -s -f -o $PWD_GITIGNORE "https://raw.githubusercontent.com/github/gitignore/master/$1.gitignore"
  if [ -f $PWD_GITIGNORE ]; then
    echo "Gitignore $1.gitignore fetched, and written to .gitignore successfully."
  else
    echo "Unable to fetch and write $1.gitignore. It may not exist, or this script may be unable to write to the current directory. Check http://github.com/github/gitignore to ensure that the specified .gitignore file exists, and that your capitalization is correct."
  fi
else
  echo "A .gitignore file already exists in this directory. Please remove or rename it, and then run this again."
fi

