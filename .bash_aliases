# .bash_aliases

# Vim
alias g='gvim --remote-silent $@ &> /dev/null'
alias vess='/usr/share/vim/vim73/macros/less.sh'
alias vim-basic='vim -u ~/.vimrc_basic'
alias vim-minimal='vim -u NONE -N'

# Misc
alias :q='exit'
alias ack='ack --smart-case'
alias c='cd'
alias l='ls'
alias ll='ls -lh --color=auto'
alias lcd='cd'
alias lls='ls'

# MPlayer
alias mpa='mplayer -vo null'
alias mpf='mplayer -fs'
alias mpp='mplayer -ao null -fs'
alias mps='mplayer -ao null'
alias mpv='mplayer -af volume=12'

# RSync
alias rget='rsync -r -v --progress -c --partial -e ssh'
