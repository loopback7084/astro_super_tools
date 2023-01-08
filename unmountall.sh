#!/usr/bin/env bash

set -euo pipefail

TMPDIR="./tmp"
FW_SLOT="${1:-_a}"
cd "${TMPDIR}"

umount -v ./system
umount -v ./vendor
umount -v ./product

e2fsck -fy system"${FW_SLOT}".img
e2fsck -fy vendor"${FW_SLOT}".img
e2fsck -fy product"${FW_SLOT}".img
resize2fs -M system"${FW_SLOT}".img
resize2fs -M vendor"${FW_SLOT}".img
resize2fs -M product"${FW_SLOT}".img
e2fsck -fy system"${FW_SLOT}".img
e2fsck -fy vendor"${FW_SLOT}".img
e2fsck -fy product"${FW_SLOT}".img
