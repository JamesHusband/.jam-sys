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
source "$JAMSYS_ROOT/scripts/systems/macos/lib/restart-services.sh"


# DOCK DEFAULTS
# -----------------------------------------------------------------------------

info "Applying Dock defaults"

set_dock show-process-indicators true
set_dock launchanim false
set_dock autohide false
set_dock show-recents false

queue_restart Dock


# DOCK APPLICATIONS
# ----------------------------------

DOCK_APPS=(
  "Firefox"
  "Kitty"
  "VSCodium"
  "Obsidian"
  "OrbStack"
)

set_dock_apps "${DOCK_APPS[@]}"

# placeholders
# set_dock mouse-over-hilite-stack true
# set_dock springboard-columns 8
# set_dock springboard-rows 7

