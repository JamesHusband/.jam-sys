#!/bin/bash

# #############################################################################
#
# FILE: screenshots.sh
# DESCRIPTION: Configure screenshot behaviour
#
# #############################################################################

source "$JAMSYS_ROOT/scripts/lib/logging.sh"

info "Applying screenshot defaults"

defaults write com.apple.screencapture type -string "png"
defaults write com.apple.screencapture disable-shadow -bool true

# placeholders
# defaults write com.apple.screencapture location -string "${HOME}/Desktop"
# defaults write com.apple.screencapture show-thumbnail -bool false

