# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# User specific environment and startup programs
# eval `dircolors $HOME/.dir_colors`

export EDITOR='vim'
export GIT_EDITOR='vim'

#VAGRANT_PATH=/opt/vagrant
#ELIXIR_PATH=$HOME/Apps/elixir
export GOROOT=$HOME/Apps/go
export GOPATH=$HOME/Projects/go
PATH=$PATH:$HOME/.local/bin:$GOROOT/bin:$GOPATH/bin

export PATH
