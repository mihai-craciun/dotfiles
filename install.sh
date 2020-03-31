#!/bin/bash
# Get the current script folder
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
# Create the update submodule method
update_submodule() {
    CRT_DIR=$(pwd)
    cd "$DIR/$1"
    git pull origin master
    git checkout master
    git pull
    cd $CRT_DIR
}
# Run scripts
$DIR/git/install.sh
update_submodule .vim
update submodule .vim/bundle/Vundle.vim
$DIR/.vim/install.sh
update_submodule .tmux
update_submodule .tmux/plugins/tpm
$DIR/.tmux/install.sh
