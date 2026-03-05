#!/bin/bash

# #############################################################################
#
# FILE: ui.sh
# DESCRIPTION: Configure macOS UI defaults
#
# #############################################################################

source "$JAMSYS_ROOT/scripts/lib/logging.sh"
source "$JAMSYS_ROOT/scripts/systems/macos/lib/set-default.sh"

info "Applying UI defaults"

set_global AppleEnableMenuBarTransparency false
set_global NSAutomaticWindowAnimationsEnabled false

# placeholders
# set_global NSWindowResizeTime 0.001
# set_global AppleReduceDesktopTinting true
# set_global AppleFontSmoothing 2
# set_global AppleInterfaceStyle "Dark"
# set_global AppleShowScrollBars "Always"

