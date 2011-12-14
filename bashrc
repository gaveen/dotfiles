# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
source ~/.bash_aliases
source ~/.bash_secrets

# Bash prompt with git notification
function parse_git_branch {
    GIT_PS1_SHOWDIRTYSTATE=1
    GIT_PS1_SHOWUNTRACKEDFILES=1
    BRANCH_PROMPT=$(__git_ps1)
    echo $BRANCH_PROMPT
}

PS1="\[\033[1;32m\][\u@\h \W\[\033[0;33m\]\$(parse_git_branch)\[\033[1;32m\]]\$\[\033[0m\] "

# For IBus
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus

# Loads RVM into a shell session
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
