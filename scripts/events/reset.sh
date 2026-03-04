#!/bin/bash

# #############################################################################
#
# FILE: reset.sh
# DESCRIPTION: JamSys reset event
#
# #############################################################################

# SCRIPT PROPS
# -----------------------------------------------------------------------------

set -euo pipefail

LOG_CONTEXT="reset"

source "$(dirname "$0")/../lib/env.sh"
source "$JAMSYS_ROOT/scripts/lib/logging.sh"


# EVENT
# -----------------------------------------------------------------------------

event "reset"

info "reset placeholder"
