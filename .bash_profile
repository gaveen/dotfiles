# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs
# eval `dircolors $HOME/.dir_colors`

ANDROID_SDK_PATH=$HOME/Apps/android-sdk/tools:$HOME/Apps/android-sdk/platform-tools
PATH=$PATH:$HOME/.local/bin:$HOME/.bin:$HOME/.rvm/bin:$ANDROID_SDK_PATH
GIT_EDITOR='vim'

export GIT_EDITOR
export PATH

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
