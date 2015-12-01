alias ll="ls -alHF"
alias x="exit"
alias c="clear"

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