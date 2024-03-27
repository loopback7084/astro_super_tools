#!/bin/sh

set -eu

SCRIPT_DIR_DEFAULT="$(dirname "$(readlink -f "$0")")"
SCRIPT_DIR="${1:-${SCRIPT_DIR_DEFAULT:-./}}"

. "$SCRIPT_DIR/common.sh"

exit
