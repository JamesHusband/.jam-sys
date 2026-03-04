#!/bin/bash

# #############################################################################
#
# FILE: bootstrap.sh
# DESCRIPTION: JamSys bootstrap event
#
# #############################################################################

# SCRIPT PROPS
# -----------------------------------------------------------------------------

set -euo pipefail

LOG_CONTEXT="bootstrap"

source "$(dirname "$0")/../lib/env.sh"
source "$JAMSYS_ROOT/scripts/lib/logging.sh"


# EVENT
# -----------------------------------------------------------------------------

event "bootstrap"

info "bootstrap placeholder"
