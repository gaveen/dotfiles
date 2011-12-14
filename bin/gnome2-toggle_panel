#!/bin/bash

panelList=$(gconftool-2 --all-dirs "/apps/panel/toplevels")

for panel in $panelList
do
    state=$(gconftool-2 --get "$panel/auto_hide")
    if [ $state = "true" ]; then
        gconftool-2 --set "$panel/unhide_delay" --type integer "0"
        gconftool-2 --set "$panel/auto_hide" --type bool "false"
    else
        gconftool-2 --set "$panel/unhide_delay" --type integer "100000"
        gconftool-2 --set "$panel/auto_hide" --type bool "true"
    fi
done
