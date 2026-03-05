#!/bin/bash

# #############################################################################
#
# FILE: finder.sh
# DESCRIPTION: Configure macOS Finder defaults
#
# #############################################################################

source "$JAMSYS_ROOT/scripts/lib/logging.sh"
source "$JAMSYS_ROOT/scripts/systems/macos/lib/set-default.sh"

info "Applying Finder defaults"

set_global AppleShowAllExtensions true
set_finder AppleShowAllFiles true
set_finder ShowPathbar true
set_finder ShowStatusBar true
set_finder OpenWindowForNewRemovableDisk true

# placeholders
# set_finder ShowHardDrivesOnDesktop true
# set_finder ShowMountedServersOnDesktop true
# set_finder ShowRemovableMediaOnDesktop true
# set_finder SpringloadingEnabled true
# set_finder AnimateInfoPanes false

