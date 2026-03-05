#!/bin/bash

# #############################################################################
#
# FILE: run-modules.sh
# DESCRIPTION: Load and execute module scripts from a directory
#
# #############################################################################

# IMPORTS
# ----------------------------------

source "$JAMSYS_ROOT/scripts/lib/logging.sh"


# RUN MODULES
# -----------------------------------------------------------------------------

run_modules() {

  local module_dir="$1"

  if [[ ! -d "$module_dir" ]]; then
    warn "Module directory not found: $module_dir"
    return
  fi

  info "Running modules from $module_dir"

  for module in $(ls "$module_dir"/*.sh 2>/dev/null | sort); do
    info "Loading $(basename "$module")"
    source "$module"
  done

}