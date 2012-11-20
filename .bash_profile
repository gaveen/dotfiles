# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# User specific environment and startup programs

# eval `dircolors $HOME/.dir_colors`

export GIT_EDITOR='vim'

export GOROOT=$HOME/Apps/go
ANDROID_SDK_PATH=$HOME/Apps/android-sdk/tools:$HOME/Apps/android-sdk/platform-tools
VAGRANT_PATH=/opt/vagrant/bin
PATH=$PATH:$HOME/.local/bin:$HOME/.bin:$VAGRANT_PATH:$ANDROID_SDK_PATH:$GOROOT/bin

export PATH

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
