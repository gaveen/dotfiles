# ~/.bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

#source ~/.bash_completion/alacritty

# Map ':h' to Vim Help
function :h { vim +"h $1" +only; }

# Bash prompt with git notification
#function parse_git_branch {
#    GIT_PS1_SHOWDIRTYSTATE=1
#    GIT_PS1_SHOWUNTRACKEDFILES=1
#    BRANCH_PROMPT=$(__git_ps1)
#    echo $BRANCH_PROMPT
#}

#CLR_GREEN=$(tput setaf 2)
#CLR_YELLW=$(tput setaf 3)
#CHR_RESET=$(tput sgr0)

#if [ "$VIM" ]; then
#    PS1="\n\[$CLR_GREEN\][\W\[$CLR_YELLW\]\$(parse_git_branch)\[$CLR_GREEN\]]\n\[$CLR_GREEN\]\$\[$CHR_RESET\] "
#else
#    PS1="\n\[\033[0;32m\][\033[0;39m\]\W\[\033[0;33m\]\$(parse_git_branch)\[\033[0;32m\]]\n\[\033[0;32m\]\$\[\033[0m\] "
#fi

# Use bat syntax highlighting for man
# Dependency: bat
function dude {
    man $1 | bat -l man --style=plain --theme TwoDark
}


# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# Add support for the f... I mean, doh
#eval $(thefuck --alias doh)
