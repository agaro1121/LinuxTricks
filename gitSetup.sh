#!/bin/bash

cd ~
curl -OL https://github.com/git/git/raw/master/contrib/completion/git-completion.bash
curl -OL https://github.com/git/git/raw/master/contrib/completion/git-prompt.sh

mv git-prompt.sh .git-prompt.sh
mv git-completion.bash .git-completion.bash

echo "if [ -f ~/.git-completion.bash ]; then" >> ~/.bashrc
echo "  source ~/.git-completion.bash" >> ~/.bashrc
echo "fi" >> ~/.bashrc

echo "if [ -f ~/.git-prompt.sh ]; then" >> ~/.bashrc
echo "  source ~/.git-prompt.sh" >> ~/.bashrc
echo "fi" >> ~/.bashrc

git config --global color.ui true
git config --global core.editor nano
git config --global --bool bash.showDirtyState true
git config --global --bool bash.showUntrackedFiles true
git config --global user.name "Anthony Garo"
git config --global user.email "agaro1121@gmail.com"