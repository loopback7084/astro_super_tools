#!/usr/bin/env bash

. ./common.sh

TMPDIR="./tmp-$$"
FW_SLOT="${1:-_a}"

mkdir -pv "${TMPDIR}" && cd "${TMPDIR}"

[ ! -d "./system" ] && mkdir -v system
[ ! -d "./vendor" ] && mkdir -v vendor
[ ! -d "./product" ] && mkdir -v product

mount -t ext4 -o loop system${FW_SLOT}.img system
mount -t ext4 -o loop vendor${FW_SLOT}.img vendor
mount -t ext4 -o loop product${FW_SLOT}.img product
