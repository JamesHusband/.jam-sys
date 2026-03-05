#!/bin/bash

# #############################################################################
#
# FILE: security.sh
# DESCRIPTION: Configure macOS security defaults
#
# #############################################################################

source "$JAMSYS_ROOT/scripts/lib/logging.sh"

info "Applying security defaults"

# strip quarantine but keep Gatekeeper enabled
xattr -dr com.apple.quarantine /Applications/*.app 2>/dev/null || true

# placeholders
# defaults write com.apple.alf globalstate -int 1
# defaults write com.apple.alf stealthenabled -int 1
# defaults write com.apple.loginwindow GuestEnabled -bool false

