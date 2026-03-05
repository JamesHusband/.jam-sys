#!/bin/bash

# #############################################################################
#
# FILE: set-default.sh
# DESCRIPTION: Helper functions for macOS defaults
#
# #############################################################################

source "$JAMSYS_ROOT/scripts/lib/logging.sh"


# DEFAULT WRITER
# ----------------------------------

set_default() {

  local domain="$1"
  local key="$2"
  local value="$3"

  local current
  current=$(defaults read "$domain" "$key" 2>/dev/null || echo "")

  if [[ "$current" == "$value" ]]; then
    info "$domain $key already set"
    return
  fi

  info "Setting $domain $key → $value"

  if [[ "$value" == "true" || "$value" == "false" ]]; then
    defaults write "$domain" "$key" -bool "$value"

  elif [[ "$value" =~ ^-?[0-9]+$ ]]; then
    defaults write "$domain" "$key" -int "$value"

  else
    defaults write "$domain" "$key" -string "$value"
  fi
}


# DOMAIN WRAPPERS
# ----------------------------------

set_global()  { set_default NSGlobalDomain "$1" "$2"; }
set_finder()  { set_default com.apple.finder "$1" "$2"; }
set_dock()    { set_default com.apple.dock "$1" "$2"; }
set_battery() { set_default com.apple.menuextra.battery "$1" "$2"; }
set_diskimg() { set_default com.apple.frameworks.diskimages "$1" "$2"; }
set_desktop() { set_default com.apple.desktopservices "$1" "$2"; }