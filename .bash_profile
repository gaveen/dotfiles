# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# User specific environment and startup programs
# eval `dircolors $HOME/.dir_colors`

export EDITOR='vim'
export GIT_EDITOR='vim'

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

VAGRANT_PATH=/opt/vagrant
export GOROOT=$HOME/Apps/go
PATH=$PATH:$HOME/.local/bin::$HOME/.rvm/bin:$GOROOT/bin:$VAGRANT_PATH/bin

export PATH
