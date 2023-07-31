#!/usr/bin/env bash

set -euo pipefail

TMPDIR="./tmp"
FW_SLOT="${1:-a}"
cd "${TMPDIR}"

umount -v ./system
umount -v ./vendor
umount -v ./product

cd ..

e2fsck -fy system_"${FW_SLOT}".img
e2fsck -fy vendor_"${FW_SLOT}".img
e2fsck -fy product_"${FW_SLOT}".img
resize2fs -M system_"${FW_SLOT}".img
resize2fs -M vendor_"${FW_SLOT}".img
resize2fs -M product_"${FW_SLOT}".img
e2fsck -fy system_"${FW_SLOT}".img
e2fsck -fy vendor_"${FW_SLOT}".img
e2fsck -fy product_"${FW_SLOT}".img

rm -rf tmp
