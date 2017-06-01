# .bashrc is stuff needed for interactive sessions.
# In practice, generally also sourced by .bash_profile

# In the long run aliases should migrate to .bash_aliases
#
alias l="ls -al"

if [ -f ~/.bash_aliases ]
then
	source ~/.bash_aliases
fi


# This hard-coded gray is visible on both dark and light windows.
# I once wrote a better version with tput; it may still exist somewhere.
# Note in particular that this version does not change the "$" to "#" for root shells.
# The "[" before the dollar prompt on previous lines is a stray but I like it.
export PS1="# \e[1;90m\u@\h:\w \e[m\r\n\$ "

export GIT_EDITOR=vim

# A whole pile of silliness that exists solely to export a few environment variables
# to the iTerm2 Mac app.
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

