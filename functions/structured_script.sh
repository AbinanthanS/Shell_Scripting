#!/bin/bash
# ─────────────────────────────────
# myscript.sh — well-structured script
# ─────────────────────────────────

# 1. Constants at the top
readonly LOG_FILE="/tmp/myscript.log"
readonly VERSION="1.0"

# 2. Functions defined before use
log() {
  echo "[$(date +%H:%M:%S)] $1" | tee -a $LOG_FILE
}

usage() {
  echo "Usage: $0 <name>"
  exit 1
}

# 3. Validate inputs early
if [ $# -eq 0 ]; then
  usage
fi

# 4. Main logic at the bottom
log "Starting script v$VERSION"
log "Hello, $1!"
# echo "Log file is: $LOG_FILE"