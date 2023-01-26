# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000
HISTCONTROL=ignoreboth

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.aliasrc ]; then
    . ~/.aliasrc
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# Custom
PS1='\[\e[0m\e[30m\]\[\e[90m\]\W\[\e[30m\] \[\e[34m\]$\[\e[0m\] '
C='\033[1;34m'
G='\033[1;33m'
B='\033[0;30m'
#C="\033[1;3$(( $RANDOM * 6 / 32767 + 1 ))m"
NC='\033[0m'

i=$(cat /proc/uptime | awk -F'.' '{print $1}')
((i/=60, min=i%60, hrs=i/60))
uptime=$(printf "%dh %02dm" $hrs $min)

echo -e "$B ,o()()o,  ${C}$USER$NC"
echo -e "$B,o'    'o,  ${C}dt${NC}  $(date '+%b. %d' | awk '{print tolower($0)}')"
echo -e "$B'O $G.  .$B O'  ${C}up${NC}  ${hrs}h ${min}m"
echo -e "$B  ·____·    ${C}pk${NC}  $(apt-mark showmanual | wc -l)"
echo ""
