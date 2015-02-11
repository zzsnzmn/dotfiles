#!/usr/bin/env bash
cd "$(dirname "${BASH_SOURCE}")"
git pull origin master

function installVundle() {
    if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
        git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    else
        echo "Vundle.vim already installed."
    fi
}

function doIt() {
	rsync --exclude ".git/" --exclude "init/" --exclude ".DS_Store" --exclude "bootstrap.sh" \
        --exclude "init.sh" --exclude "py-reqs.txt" \
        --exclude "powerline-fonts/" --exclude "iterm2-colorschemes" \
		--exclude "README.md" --exclude "LICENSE-MIT.txt" -av --no-perms . ~ \
	--exclude "themes" --exclude "Brewfile"
	source ~/.bash_profile
}



if [ "$1" == "--force" -o "$1" == "-f" ]; then
    installVundle
	doIt
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
	echo
	if [[ $REPLY =~ ^[Yy]$ ]]; then
        installVundle
		doIt
	fi
fi
unset doIt
