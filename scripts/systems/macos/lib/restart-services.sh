#!/bin/bash

# #############################################################################
#
# FILE: restart-services.sh
# DESCRIPTION: Restart macOS services so defaults take effect
#
# #############################################################################

restart_services() {

  killall Finder 2>/dev/null || true
  sleep 1
  killall Finder 2>/dev/null || true
  killall Dock 2>/dev/null || true
  killall SystemUIServer 2>/dev/null || true

}

