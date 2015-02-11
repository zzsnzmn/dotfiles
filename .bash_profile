#!/usr/bin/env bash

# add brew binaries
PATH=/usr/local/bin/path:$PATH

# local bin
PATH="$HOME/bin:$PATH"

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

# ruby/chef
function activate_chef {
    eval "$(chef shell-init bash)"
}


# python
[[ -d "$HOME/Library/Python/2.7/bin" ]] && PATH="$HOME/Library/Python/2.7/bin:$PATH"

# go --- should be guarded better...
export PATH=$PATH:/usr/local/opt/go/libexec/bin
export GOPATH=$HOME/.go

# fleetctl
export FLEETCTL_TUNNEL=
export NUM_INSTANCES=1

# docker/boot2docker --- should be in .secrets
export DOCKER_HOST=
export DOCKER_CERT_PATH=
export DOCKER_TLS_VERIFY=


# virtualenv wrapper
source /usr/local/bin/virtualenvwrapper.sh
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Projects

# Postgres.app
[[ -d "/Applications/Postgres.app/Contents/Versions/9.3/bin" ]] && PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.3/bin

# Java Home
[[ -d "/Library/Java/JavaVirtualMachines/jdk1.8.0_25.jdk/Contents/Home" ]] && export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_25.jdk/Contents/Home"

# ec2 tools
[[ -d "/usr/local/ec2/ec2-api-tools-1.7.2.3" ]] && export EC2_HOME=/usr/local/ec2/ec2-api-tools-1.7.2.3 && export PATH=$PATH:$EC2_HOME/bin

source ~/.alias
source ~/.secrets

