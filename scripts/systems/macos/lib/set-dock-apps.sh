#!/bin/bash

# #############################################################################
#
# FILE: set-dock-apps.sh
# DESCRIPTION: Configure Dock persistent applications
#
# #############################################################################

source "$JAMSYS_ROOT/scripts/lib/logging.sh"
source "$JAMSYS_ROOT/scripts/systems/macos/lib/restart-services.sh"


set_dock_apps() {

  local apps=("$@")

  if ! command -v dockutil >/dev/null 2>&1; then
    warn "dockutil not found; skipping Dock configuration"
    return
  fi

  dockutil --remove all --no-restart

  for app in "${apps[@]}"; do
    dockutil --add "/Applications/${app}.app" --no-restart
  done

  queue_restart Dock
}