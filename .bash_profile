[[ $TERM != "screen-256color" ]] && export TERM=xterm-256color
export CLICOLOR=1

export LANG=en_US.UTF-8
export LOCALE="UTF-8"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

# python
[[ -d "$HOME/Library/Python/2.7/bin" ]] && PATH="$HOME/Library/Python/2.7/bin:$PATH"

# local bin
PATH="$HOME/bin:$PATH"

# virtualenv wrapper
source /usr/local/bin/virtualenvwrapper.sh
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Projects

# docker...
export DOCKER_MEMORY="1024"

source ~/.alias

# powerline
. ~/bin/powerline/powerline/bindings/bash/powerline.sh

echo "i love you"

