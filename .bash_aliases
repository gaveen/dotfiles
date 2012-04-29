# Vim
alias vess='/usr/share/vim/vim73/macros/less.sh'
alias g='gvim --remote-silent $@ &> /dev/null'

# Misc
alias c='cd'
alias l='ls'
alias ll='ls -lh --color=auto'
alias lls='ls'
alias lcd='cd'
alias ack='ack --smart-case'
alias :q='exit'

# MPlayer
alias mpa='mplayer -vo null'
alias mpf='mplayer -fs'
alias mpp='mplayer -ao null -fs'
alias mps='mplayer -ao null'

# RSync
alias rget='rsync -r -v --progress -c --partial -e ssh'
