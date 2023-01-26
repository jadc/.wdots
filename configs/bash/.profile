# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# Paths
export DOTS=$HOME/.wdots
export SCRIPTS=$DOTS/scripts
export PATH=$SCRIPTS/path:$PATH

# Environmental Variables
export EDITOR='nvim'
export VISUAL=$EDITOR

# Misc
export XDG_CONFIG_HOME="$HOME/.config"
