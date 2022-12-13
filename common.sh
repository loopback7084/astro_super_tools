#!/usr/bin/env bash

root_fail() {
    echo "Not running as root, please run as root!"
    exit 1
}

[ "$(id -u)" != 0 ] && root_fail