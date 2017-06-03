# .bashrc is stuff needed for interactive sessions.
# In practice, generally also sourced by .bash_profile

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

sourceif() {
    if [ -f "${1}" ]
    then
        source "${1}"
    fi
}

sourceif ~/.bash_aliases.neumob_jumpbox
sourceif ~/.bash_aliases

# A whole pile of silliness that exists solely to export a few environment variables
# to the iTerm2 Mac app.
sourceif ~/.iterm2_shell_integration.bash

# This hard-coded gray is visible on both dark and light windows.
# I once wrote a better version with tput; it may still exist somewhere.
# Note in particular that this version does not change the "$" to "#" for root shells.
# The "[" before the dollar prompt on previous lines was a stray but I liked it.
export PS1="# \e[1;90m\u@\h:\w \e[m\r\n\$ "

export GIT_EDITOR=vim

# not sure where this is getting mangled.
unset LS_COLORS

# 
# if [ -f ~/..bash_aliases.neumob_jumpbox ]
# then
#     source .bash_aliases.neumob_jumpbox
# fi
# 
# if [ -f ~/.bash_aliases ]
# then
# 	source ~/.bash_aliases
# fi
# 
# 
# # A whole pile of silliness that exists solely to export a few environment variables
# # to the iTerm2 Mac app.
# test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
# 
