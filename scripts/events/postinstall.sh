#!/bin/bash

# #############################################################################
#
# FILE: postinstall.sh
# DESCRIPTION: JamSys postinstall event
#
# #############################################################################

# SCRIPT PROPS
# -----------------------------------------------------------------------------

set -euo pipefail

LOG_CONTEXT="postinstall"

source "$(dirname "$0")/../lib/env.sh"
source "$JAMSYS_ROOT/scripts/lib/logging.sh"


# EVENT
# -----------------------------------------------------------------------------

event "postinstall"

info "postinstall placeholder"
