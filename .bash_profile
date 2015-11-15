# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# User specific environment and startup programs
# eval `dircolors $HOME/.dir_colors`

export EDITOR='vim'
export GIT_EDITOR='vim'

export GOROOT=$HOME/Apps/go
export GOPATH=$HOME/.local/share/go

PATH=$PATH:$HOME/.local/bin:$GOROOT/bin:$GOPATH/bin

export PATH
