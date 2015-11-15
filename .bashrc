# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
source ~/.bash_aliases
source ~/.local/bin/git-prompt.sh
#source ~/.bash_secrets

# Map ':h' to Vim Help
function :h { vim +"h $1" +only; }

# Bash prompt with git notification
function parse_git_branch {
    GIT_PS1_SHOWDIRTYSTATE=1
    GIT_PS1_SHOWUNTRACKEDFILES=1
    BRANCH_PROMPT=$(__git_ps1)
    echo $BRANCH_PROMPT
}

CLR_GREEN=$(tput setaf 2)
CLR_YELLW=$(tput setaf 3)
CHR_RESET=$(tput sgr0)

if [ "$VIM" ]; then
    PS1="\[$CLR_GREEN\][\u@\h \W\[$CLR_YELLW\]\$(parse_git_branch)\[$CLR_GREEN\]]\$\[$CHR_RESET\] "
else
    PS1="\[\033[0;32m\][\u@\h \W\[\033[0;33m\]\$(parse_git_branch)\[\033[0;32m\]]\$\[\033[0m\] "
fi
