# .bash_profile is executed for login shells only; 
# .bashrc is executed for all interactive shells (i.e. new terminal windows.)
# (Note that Terminal app on Mac runs login shell for each new terminal.  Boo.)

# Anything dealing with the keychain should probably be put here as all proesses will
# have access. 

# Backwards compatibility with plain old /bin/sh
if [ -f ~/.profile ] 
then
	source ~/.profile
fi

if [ -f ~/.bashrc ] 
then
	source ~/.bashrc
fi


