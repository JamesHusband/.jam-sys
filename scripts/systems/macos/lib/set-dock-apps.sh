#!/bin/bash

# #############################################################################
#
# FILE: set-dock-apps.sh
# DESCRIPTION: Configure persistent Dock applications using dockutil
#
# #############################################################################

source "$JAMSYS_ROOT/scripts/lib/logging.sh"

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

  killall Dock 2>/dev/null || true
}

