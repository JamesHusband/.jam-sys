#!/bin/bash

# #############################################################################
#
# FILE: restart-services.sh
# DESCRIPTION: Restart macOS services requested by modules
#
# #############################################################################

source "$JAMSYS_ROOT/scripts/lib/logging.sh"


# RESTART QUEUE
# ----------------------------------

declare -a SERVICE_RESTART_QUEUE


queue_restart() {

  SERVICE_RESTART_QUEUE+=("$1")

}


restart_services() {

  info "Restarting macOS preference services"

  killall cfprefsd 2>/dev/null || true

  for service in "${SERVICE_RESTART_QUEUE[@]}"; do
    info "Restarting $service"
    killall "$service" 2>/dev/null || true
  done

}