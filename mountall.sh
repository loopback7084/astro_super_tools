#!/usr/bin/env bash

. ./common.sh

TMPDIR="./tmp"
FW_SLOT="${1:-a}"

mkdir -pv "${TMPDIR}" && cd "${TMPDIR}" || exit 1

[ ! -d "./system" ] && mkdir -v system
[ ! -d "./vendor" ] && mkdir -v vendor
[ ! -d "./product" ] && mkdir -v product

mount -t ext4 -o loop ../system_"${FW_SLOT}".img system
mount -t ext4 -o loop ../vendor_"${FW_SLOT}".img vendor
mount -t ext4 -o loop ../product_"${FW_SLOT}".img product
