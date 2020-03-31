#!/bin/bash
# Get the current script directory
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
# Copy to home
cp "$DIR/.gitconfig" "$HOME/"
# Put aliases to bash_aliases
cat "$DIR/git_aliases.sh" >> "$HOME/.bash_aliases"
