#!/bin/bash

curl -L https://github.com/git/git/raw/master/contrib/completion/git-completion.bash > ~/.git-completion.bash
curl -L https://raw.githubusercontent.com/agaro1121/LinuxTricks/master/.git-prompt.sh > ~/.git-prompt.sh

git config --global color.ui true
git config --global core.editor nano
git config --global --bool bash.showDirtyState true
git config --global --bool bash.showUntrackedFiles true
git config --global user.name "Anthony Garo"
git config --global user.email "agaro1121@gmail.com"
git config --global credential.helper osxkeychain