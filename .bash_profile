#!/usr/bin/env bash

# Load RVM, if you are using it
PATH=/usr/local/bin/path:$PATH

# Set my editor and git editor
export EDITOR="vim"

# Don't check mail when opening terminal.
unset MAILCHECK

# Change this to your console based IRC client of choice.
export IRC_CLIENT='irssi'

# Stuff not provided by bash-it
[[ $TMUX != "" ]] && export TERM=screen-256color
export CLICOLOR=1

export LANG=en_US.UTF-8
export LOCALE="UTF-8"

# ruby

# chef
eval "$(chef shell-init bash)"

# docker 
# eval $(dvm env)
# export DOCKER_HOST=tcp://192.168.42.43:2375

# python
[[ -d "$HOME/Library/Python/2.7/bin" ]] && PATH="$HOME/Library/Python/2.7/bin:$PATH"

# local bin
PATH="$HOME/bin:$PATH"

# virtualenv wrapper
source /usr/local/bin/virtualenvwrapper.sh
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Projects

# Postgres.app
[[ -d "/Applications/Postgres.app/Contents/Versions/9.3/bin" ]] && PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.3/bin

source ~/.alias

