#!/bin/bash

curl -L https://github.com/git/git/raw/master/contrib/completion/git-completion.bash > ~/.git-completion.bash
curl -L https://raw.githubusercontent.com/agaro1121/LinuxTricks/master/.git-prompt.sh > ~/.git-prompt.sh
curl -L https://raw.githubusercontent.com/git/git/master/contrib/diff-highlight/diff-highlight > ~/bin/diff-highlight && chmod +x ~/bin/diff-highlight

sudo apt-get update && sudo apt-get install -y git libcurl4-gnutls-dev libexpat1-dev gettext libz-dev libssl-dev
cd /dev/git
git clone https://github.com/git/git.git
cd git
make prefix=/usr/local all
sudo make prefix=/usr/local install

git config --global color.ui true
git config --global core.editor nano
git config --global --bool bash.showDirtyState true
git config --global --bool bash.showUntrackedFiles true
git config --global user.name "Anthony Garo"
git config --global user.email "agaro1121@gmail.com"
git config --global credential.helper osxkeychain

git config --global alias.s status
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.unstage 'reset HEAD'

git config pager.log 'diff-highlight | less'
git config pager.show 'diff-highlight | less'
git config pager.diff 'diff-highlight | less'