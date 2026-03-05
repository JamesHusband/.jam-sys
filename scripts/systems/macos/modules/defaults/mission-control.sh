#!/bin/bash

# #############################################################################
#
# FILE: mission-control.sh
# DESCRIPTION: Configure Mission Control behaviour
#
# #############################################################################

source "$JAMSYS_ROOT/scripts/lib/logging.sh"
source "$JAMSYS_ROOT/scripts/systems/macos/lib/set-default.sh"

info "Applying Mission Control defaults"

set_dock mru-spaces false
set_dock expose-group-by-app true

# placeholders
# set_dock expose-animation-duration 0.1
# set_dock wvous-tl-corner 2
# set_dock wvous-tr-corner 4

