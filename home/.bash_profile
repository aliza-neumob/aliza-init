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

# export force_color_prompt=yes
# [[ -f ~/.bashrc ]] && source ~/.bashrc

SSH_ENV="${HOME}/.ssh/environment"

function start_agent() {
    echo -n "Initializing new SSH agent..."
    /usr/bin/ssh-agent | sed 's/^echo/#echo/' > "${SSH_ENV}"
    echo ' succeeded.'
    chmod 600 "${SSH_ENV}"
    source "${SSH_ENV}" > /dev/null
    /usr/bin/ssh-add
    /usr/bin/ssh-add ~/.ssh/nm-ec2-sfo.pem;
}

# Source SSH settings, if applicable
if [[ -f "${SSH_ENV}" ]]; then
    source "${SSH_ENV}" > /dev/null
    ps -ef | grep ${SSH_AGENT_PID} | grep 'ssh-agent$' > /dev/null || {
        start_agent;
    }
else
    start_agent;
fi


if [[ -d "$HOME/bin" ]]; then
    PATH="$HOME/bin:${PATH}"
fi

