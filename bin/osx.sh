#!/usr/bin/env bash

# setup macOS ... defaults, prefs, etc

# @author Curtis Spendlove

# Warn that some commands will not be run if the script is not run as root.
if [[ $EUID -ne 0 ]]; then
  RUN_AS_ROOT=false
  printf "Certain commands will not be run without sudo privileges. To run as root, run the same command prepended with 'sudo', for example: $ sudo $0\n\n" | fold -s -w 80
else
  RUN_AS_ROOT=true
  # Update existing `sudo` timestamp until `.osx` has finished
  while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &
fi

defaults write NSGlobalDomain _HIHideMenuBar -bool true

# other things to add:
# safari: restore tabs
# general: 
# keyboards: capslock = control

###############################################################################
# Kill/restart affected applications                                          #
###############################################################################

# Restart affected applications if `--no-restart` flag is not present.
# if [[ ! ($* == *--no-restart*) ]]; then
#   for app in "cfprefsd" "Dock" "Finder" "Mail" "SystemUIServer" "Terminal"; do
#     killall "${app}" > /dev/null 2>&1
#   done
# fi

printf "Please log out and log back in to make all settings take effect.\n"
