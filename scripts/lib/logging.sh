#!/bin/bash

# #############################################################################
#
# FILE: logging.sh
# DESCRIPTION: JamSys structured logging library
#
# #############################################################################

# TERMINAL DETECTION
# ----------------------------------

USE_COLOR=false
[ -t 1 ] && [ -z "${NO_COLOR:-}" ] && USE_COLOR=true


# FORMAT TOKENS
# ----------------------------------

if $USE_COLOR; then
  PREFIX=$'\e[1;34m==>\e[0m'
  ICON_EVENT=$'\e[1;34m▶\e[0m'
  ICON_INFO=$'\e[1;34m➡\e[0m'
  ICON_OK=$'\e[1;32m✔\e[0m'
  ICON_WARN=$'\e[1;33m‼\e[0m'
  ICON_ERR=$'\e[1;31m✘\e[0m'
else
  PREFIX="==>"
  ICON_EVENT=">"
  ICON_INFO="->"
  ICON_OK="OK"
  ICON_WARN="!!"
  ICON_ERR="ERROR"
fi


# INTERNAL LOGGER
# ----------------------------------

_log() {
  local icon="$1"
  local message="$2"

  if [ -n "${LOG_CONTEXT:-}" ]; then
    printf "%s [%s] %s %s\n" "$PREFIX" "$LOG_CONTEXT" "$icon" "$message"
  else
    printf "%s %s %s\n" "$PREFIX" "$icon" "$message"
  fi
}


# PUBLIC LOG FUNCTIONS
# ----------------------------------

event() { printf "\n%s %s %s\n" "$PREFIX" "$ICON_EVENT" "$1"; }
info()  { _log "$ICON_INFO" "$1"; }
check() { _log "$ICON_OK" "$1"; }
warn()  { _log "$ICON_WARN" "$1"; }
error() { _log "$ICON_ERR" "$1" >&2; }


# TIMED STEP
# ----------------------------------

step() {

  local message="$1"
  shift

  info "$message"

  local start end duration
  start=$(date +%s)

  "$@"

  end=$(date +%s)
  duration=$((end - start))

  check "$message (${duration}s)"
}


# ERROR TRACE
# ----------------------------------

_error_trace() {

  local exit_code=$?
  local line_no=$1
  local cmd=$2

  if [ -n "${LOG_CONTEXT:-}" ]; then
    printf "%s [%s] %s Error at line %s\n" "$PREFIX" "$LOG_CONTEXT" "$ICON_ERR" "$line_no" >&2
    printf "%s [%s] %s Command: %s\n" "$PREFIX" "$LOG_CONTEXT" "$ICON_ERR" "$cmd" >&2
  else
    printf "%s %s Error at line %s\n" "$PREFIX" "$ICON_ERR" "$line_no" >&2
    printf "%s %s Command: %s\n" "$PREFIX" "$ICON_ERR" "$cmd" >&2
  fi

  exit "$exit_code"
}

trap '_error_trace $LINENO "$BASH_COMMAND"' ERR
