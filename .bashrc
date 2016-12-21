alias ll="ls -GflAsh"
alias x="exit"
alias c="clear"
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES ; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO ; killall Finder /System/Library/CoreServices/Finder.app'
#alias startDocker='bash --login ''/Applications/Docker/Docker Quickstart Terminal.app/Contents/Resources/Scripts/start.sh'''
alias gp="git pull"
alias get="git clone"
alias go="git checkout"
alias gs="clear && git status"
alias gd="git diff"
alias gpo="git push -u origin "
alias updateBlog='cd /Users/Hierro/dev/git/agaro1121.github.io && ls -A | grep -vx .git | xargs rm -rf && rm -rf /Users/Hierro/dev/git/agaro1121.github.io.raw && get git@github.com:agaro1121/agaro1121.github.io.git /Users/Hierro/dev/git/agaro1121.github.io.raw &&cd /Users/Hierro/dev/git/agaro1121.github.io.raw && gp && bundle exec jekyll build && cp -r _site/* /Users/Hierro/dev/git/agaro1121.github.io/ && cd /Users/Hierro/dev/git/agaro1121.github.io && touch .nojekyll && git add . && git commit -am "converts to flat HTML" && git push origin master'
alias hbc='sudo openconnect --user=anthonygaro --authgroup="General Access" connect.saksinc.com'

HISTFILESIZE=10000
HISTSIZE=10000

PATH="$PATH:"
PATH="$PATH:/Users/Hierro/bin"
export PATH

if [ -f ~/.git-completion.bash ]; then
  source ~/.git-completion.bash
fi

if [ -f ~/.git-prompt.sh ]; then
  source ~/.git-prompt.sh
  export PS1='\W$(__git_ps1) > '
fi

ORACLE_HOME=/Users/Hierro/dev/instantclient_12_1
export ORACLE_HOME
export DYLD_LIBRARY_PATH=$ORACLE_HOME
export LD_LIBRARY_PATH=$ORACLE_HOME

source ~/.iterm2_shell_integration.`basename $SHELL`
