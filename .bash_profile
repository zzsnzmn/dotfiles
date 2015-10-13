#!/usr/bin/env bash

export LANG=en_US.UTF-8
export LOCALE="UTF-8"

# add brew binaries
PATH=/usr/local/bin/path:$PATH

# local bin
PATH="$HOME/bin:$PATH"

# Set my editor and git editor
export EDITOR="vim"
eval "$(hub alias -s)"

# Don't check mail when opening terminal.
unset MAILCHECK

[[ $TMUX != "" ]] && export TERM=screen-256color
export CLICOLOR=1


# python
[[ -d "$HOME/Library/Python/2.7/bin" ]] && PATH="$HOME/Library/Python/2.7/bin:$PATH"

# virtualenv wrapper
source /usr/local/bin/virtualenvwrapper.sh
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Projects

# source nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# go --- should be guarded better...
export PATH=$PATH:/usr/local/opt/go/libexec/bin
export GOPATH=$HOME/.go

# rbenv
eval "$(rbenv init -)"

# could probably name this differently
function reset_env {
    exec bash -l
}

# C#
[ -s "kvm.sh" ] && . kvm.sh


# Java Home
[[ -d "/Library/Java/JavaVirtualMachines/jdk1.8.0_25.jdk/Contents/Home" ]] && export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_25.jdk/Contents/Home"

# fleetctl
export FLEETCTL_TUNNEL=
export NUM_INSTANCES=1

# docker/boot2docker --- should be in .secrets
# eval $(dvm env)
export DOCKER_HOST=
export DOCKER_CERT_PATH=
export DOCKER_TLS_VERIFY=


# Postgres.app
[[ -d "/Applications/Postgres.app/Contents/Versions/9.3/bin" ]] && PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.3/bin
[[ -d "/Applications/Postgres.app/Contents/Versions/9.4/bin" ]] && PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin

# ec2 tools
[[ -d "/usr/local/ec2/ec2-api-tools-1.7.2.3" ]] && export EC2_HOME=/usr/local/ec2/ec2-api-tools-1.7.2.3 && export PATH=$PATH:$EC2_HOME/bin


source ~/.alias
source ~/.secrets

