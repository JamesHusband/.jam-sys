#!/bin/bash

# #############################################################################
#
# FILE: preflight.sh
# DESCRIPTION: JamSys preflight event
#
# #############################################################################

# SCRIPT PROPS
# -----------------------------------------------------------------------------

set -euo pipefail

LOG_CONTEXT="preflight"

source "$(dirname "$0")/../lib/env.sh"
source "$JAMSYS_ROOT/scripts/lib/logging.sh"


# EVENT
# -----------------------------------------------------------------------------

event "preflight"

info "preflight placeholder"
