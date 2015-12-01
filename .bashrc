alias ll="ls -alHF"
alias x="exit"
alias c="clear"

HISTFILESIZE=10000
HISTSIZE=10000

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