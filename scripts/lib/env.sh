#!/bin/bash

# #############################################################################
#
# FILE: env.sh
# DESCRIPTION: JamSys environment initialization
#
# #############################################################################

# ENVIRONMENT
# ----------------------------------

JAMSYS_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"

export JAMSYS_ROOT
