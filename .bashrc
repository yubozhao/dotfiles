if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

. ~/bash_completion.d/git-prompt.sh
. ~/bash_completion.d/git-completion.bash

if [ -f ~/bash_completion.d/hub-completion.bash ]; then
  . ~/bash_completion.d/hub-completion.bash
fi

DULL=0
BRIGHT=1

FG_BLACK=30
FG_RED=31
FG_GREEN=32
FG_YELLOW=33
FG_BLUE=34
FG_VIOLET=35
FG_CYAN=36
FG_WHITE=37

FG_NULL=00

BG_BLACK=40
BG_RED=41
BG_GREEN=42
BG_YELLOW=43
BG_BLUE=44
BG_VIOLET=45
BG_CYAN=46
BG_WHITE=47

BG_NULL=00

##
# ANSI Escape Commands
##
ESC="\033"
NORMAL="\[$ESC[m\]"
RESET="\[$ESC[${DULL};${FG_WHITE};${BG_NULL}m\]"

##
# Shortcuts for Colored Text ( Bright and FG Only )
##

# DULL TEXT
BLACK="\[$ESC[${DULL};${FG_BLACK}m\]"
RED="\[$ESC[${DULL};${FG_RED}m\]"
GREEN="\[$ESC[${DULL};${FG_GREEN}m\]"
YELLOW="\[$ESC[${DULL};${FG_YELLOW}m\]"
BLUE="\[$ESC[${DULL};${FG_BLUE}m\]"
VIOLET="\[$ESC[${DULL};${FG_VIOLET}m\]"
CYAN="\[$ESC[${DULL};${FG_CYAN}m\]"
WHITE="\[$ESC[${DULL};${FG_WHITE}m\]"

# BRIGHT TEXT
BRIGHT_BLACK="\[$ESC[${BRIGHT};${FG_BLACK}m\]"
BRIGHT_RED="\[$ESC[${BRIGHT};${FG_RED}m\]"
BRIGHT_GREEN="\[$ESC[${BRIGHT};${FG_GREEN}m\]"
BRIGHT_YELLOW="\[$ESC[${BRIGHT};${FG_YELLOW}m\]"
BRIGHT_BLUE="\[$ESC[${BRIGHT};${FG_BLUE}m\]"
BRIGHT_VIOLET="\[$ESC[${BRIGHT};${FG_VIOLET}m\]"
BRIGHT_CYAN="\[$ESC[${BRIGHT};${FG_CYAN}m\]"
BRIGHT_WHITE="\[$ESC[${BRIGHT};${FG_WHITE}m\]"

# REV TEXT as an example
REV_CYAN="\[$ESC[${DULL};${BG_WHITE};${BG_CYAN}m\]"
REV_RED="\[$ESC[${DULL};${FG_YELLOW}; ${BG_RED}m\]"

PROMPT_COMMAND='export ERR=$?'



#if [ -f `brew --prefix`/etc/bash_completion ]; then
#  . `brew --prefix`/etc/bash_completion
#fi

[[ $TERM == "screen" ]] && export -p TERM="screen-256color"

function code() {
  cd ~/src/$1;
}

function vim() {
  nvim $1;
}

export GIT_PS1_DESCRIBE_STYLE=branch
export GIT_PS1_SHOWUPSTREAM="git verbose"
export GIT_PS1_SHOWDIRTYSTATE=1
export PS1="${BRIGHT_CYAN}\w${GREEN}\$(__git_ps1 ' (%s)') \$ ${RESET}"


export PATH="/opt/local/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:$PATH"
export PATH=".:$PATH"
export PATH="$PATH:~/scripts"
export PATH="$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools"
# export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_60.jdk/Contents/Home"
# export JAVA_HOME=$(/usr/libexec/java_home -v 1.8.0_152)
export PATH="$PATH:$HOME/.yarn/bin"


# Go path
export GOPATH=$HOME/src/go # don't forget to change your path correctly!
export GOROOT=/usr/local/opt/go/libexec
export GOBIN=$GOPATH/bin

export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
export PATH=$PATH:$GOBIN/bin

# brew python
export PATH="/usr/local/opt/python/libexec/bin:$PATH"



alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias e='vi'
alias egrep='grep -E'
alias fgrep='grep -F'
alias ls='ls -FG'
alias m='less'
alias md='mkdir'
alias sl='ls'
alias tmp='cd /tmp'
alias l='ls -la'
alias dh='df -h'

## npm list global and local
alias ng="npm list -g --depth=0 2>/dev/null"
alias nl="npm list --depth=0 2>/dev/null"


# powerline
# function _update_ps1() {
#     PS1="$(powerline-shell $?)"
# }

# if [ "$TERM" != "linux" ]; then
#     PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
# fi
# export POWERLINE_CONFIG_COMMAND="/usr/local/bin/powerline-config"
# export POWERLINE_COMMAND=powerline
