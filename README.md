# zzsnzmn's elegant dotfiles repo

Clone the repo and run:
```
./init.sh
source ./bootstrap.sh
```

If it's the first install on a new computer, you'll have to make sure you install powerline as an editable python package via:
```
pip install -e ~/bin/powerline
```

If you're using OS X and would like to install some useful things you can download brew [here](http://brew.sh/). Once installed run...
```
brew bundle ~/Brewfile
```

Add local git stuff
```
touch ~/.gitconfig.user
```

And add something like...
```
[user]
	name = USERNAME
	email = COOLGUY@emailaddress.com 
```
