alias ll="ls -SalHF"
alias x="exit"
alias c="clear"
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES ; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO ; killall Finder /System/Library/CoreServices/Finder.app'
alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias go='git checkout '
alias get='git clone '



HISTFILESIZE=10000
HISTSIZE=10000

JAVA_HOME=/home/hierro/dev/lib/jdk1.8.0_45/bin
export JAVA_HOME
PATH=$PATH:$JAVA_HOME

JDK_HOME=/home/hierro/dev/lib/jdk1.8.0_45
export JDK_HOME
PATH=$PATH:$JDK_HOME

SCALA_HOME=/home/hierro/dev/lib/scala-2.11.7/bin
export SCALA_HOME
PATH=$PATH:$SCALA_HOME

SBT_HOME=/home/hierro/dev/lib/sbt/bin
export SBT_HOME
PATH=$PATH:$SBT_HOME

PATH=$PATH:/home/hierro/bin

PATH=$PATH:/usr/local/bin


PATH="$PATH:"
export PATH
export PS1='\W > '

if [ -f ~/.git-completion.bash ]; then
  source ~/.git-completion.bash
fi

if [ -f ~/.git-prompt.sh ]; then
  source ~/.git-prompt.sh
  export PS1='\W$(__git_ps1) > '
fi
