#!/bin/bash

# #############################################################################
#
# FILE: postinstall.sh
# DESCRIPTION: JamSys post-install event
#
# #############################################################################

# SCRIPT PROPS
# -----------------------------------------------------------------------------

set -euo pipefail

LOG_CONTEXT="postinstall"

source "$(dirname "$0")/../lib/env.sh"
source "$JAMSYS_ROOT/scripts/lib/logging.sh"
source "$JAMSYS_ROOT/scripts/lib/run-modules.sh"
source "$JAMSYS_ROOT/scripts/systems/macos/lib/restart-services.sh"


# EVENT
# -----------------------------------------------------------------------------

event "POSTINSTALL"


# MACOS DEFAULTS
# -----------------------------------------------------------------------------

run_modules "$JAMSYS_ROOT/scripts/systems/macos/modules/defaults"


# APPLY SERVICE RESTARTS
# -----------------------------------------------------------------------------

restart_services


# SCAFFOLDING
# -----------------------------------------------------------------------------

info "Creating development directory"

mkdir -p "$HOME/Development"