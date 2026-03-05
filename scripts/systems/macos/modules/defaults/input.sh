#!/bin/bash

# #############################################################################
#
# FILE: input.sh
# DESCRIPTION: Configure keyboard and input defaults
#
# #############################################################################

source "$JAMSYS_ROOT/scripts/lib/logging.sh"
source "$JAMSYS_ROOT/scripts/systems/macos/lib/set-default.sh"

info "Applying input defaults"

set_global AppleKeyboardUIMode 3
set_global ApplePressAndHoldEnabled false
set_global KeyRepeat 2
set_global InitialKeyRepeat 15
set_global NSAutomaticSpellingCorrectionEnabled false

# placeholders
# set_global NSAutomaticCapitalizationEnabled false
# set_global NSAutomaticDashSubstitutionEnabled false
# set_global NSAutomaticQuoteSubstitutionEnabled false
# set_global NSAutomaticPeriodSubstitutionEnabled false
# set_global NSAutomaticTextCompletionEnabled false

