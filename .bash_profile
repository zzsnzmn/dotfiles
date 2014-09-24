#!/usr/bin/env bash

# Load RVM, if you are using it
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm

# Add rvm gems and nginx to the path
# export PATH=$PATH:~/.gem/ruby/1.8/bin:/opt/nginx/sbin

# Path to the bash it configuration
export BASH_IT=$HOME/.bash_it

# Lock and Load a custom theme file
# location /.bash_it/themes/
export BASH_IT_THEME='modern-t'

# Your place for hosting Git repos. I use this for private repos.
# export GIT_HOSTING='git@git.domain.com'

# Set my editor and git editor
export EDITOR="vim"

# Set the path nginx
export NGINX_PATH='/opt/nginx'

# Don't check mail when opening terminal.
unset MAILCHECK

# Change this to your console based IRC client of choice.
export IRC_CLIENT='irssi'

# Set this to the command you use for todo.txt-cli
export TODO="t"

# Set vcprompt executable path for scm advance info in prompt (demula theme)
# https://github.com/xvzf/vcprompt
#export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

# Stuff not provided by bash-it
[[ $TMUX != "" ]] && export TERM=screen-256color
export CLICOLOR=1

export LANG=en_US.UTF-8
export LOCALE="UTF-8"

# python
[[ -d "$HOME/Library/Python/2.7/bin" ]] && PATH="$HOME/Library/Python/2.7/bin:$PATH"

# local bin
PATH="$HOME/bin:$PATH"

# virtualenv wrapper
source /usr/local/bin/virtualenvwrapper.sh
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Projects

# docker...
export DOCKER_MEMORY="2048"
eval $(dvm env)

# Postgres.app
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.3/bin

source ~/.alias

# Load Bash It
source $BASH_IT/bash_it.sh
