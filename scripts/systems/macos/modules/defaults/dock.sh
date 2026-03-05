#!/bin/bash

# #############################################################################
#
# FILE: dock.sh
# DESCRIPTION: Configure macOS Dock defaults
#
# #############################################################################

source "$JAMSYS_ROOT/scripts/lib/logging.sh"
source "$JAMSYS_ROOT/scripts/systems/macos/lib/set-default.sh"
source "$JAMSYS_ROOT/scripts/systems/macos/lib/set-dock-apps.sh"

info "Applying Dock defaults"

set_dock show-process-indicators true
set_dock launchanim false
set_dock autohide false
set_dock show-recents false

# placeholders
# set_dock mouse-over-hilite-stack true
# set_dock springboard-columns 8
# set_dock springboard-rows 7

