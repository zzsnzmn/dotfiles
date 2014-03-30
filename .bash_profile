[[ $TERM != "screen-256color" ]] && export TERM=xterm-256color
export CLICOLOR=1
export LANG=en_US.UTF-8
export LOCALE="UTF-8"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

# python
[[ -d "$HOME/Library/Python/2.7/bin" ]] && PATH="$HOME/Library/Python/2.7/bin:$PATH"

# virtualenv wrapper
source /usr/local/bin/virtualenvwrapper.sh
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Projects

# powerline
[[ -d "/usr/local/lib/python2.7/site-packages/powerline" ]] && . /usr/local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh

echo "i love you"

