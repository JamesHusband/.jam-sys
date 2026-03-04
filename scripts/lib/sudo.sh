#!/bin/bash

# #############################################################################
#
# FILE: sudo.sh
# DESCRIPTION: Acquire and maintain sudo privileges
#
# #############################################################################


# SUDO INIT
# ----------------------------------

sudo_init() {

  sudo -v

  while true; do
    sudo -n true
    sleep 60
    kill -0 "$$" || exit
  done 2>/dev/null &
}
