#!/usr/bin/env bash

. ./common.sh

# unused
# oldsize=6442450944

FW_SLOT="${1:-a}"

declare -i sizepro
declare -i sizeven
declare -i sizesys

sizepro=$( stat -c %s product_"${FW_SLOT}".img )
sizeven=$( stat -c %s vendor_"${FW_SLOT}".img )
sizesys=$( stat -c %s system_"${FW_SLOT}".img )
newsize=$((sizepro+sizeven+sizesys+sizesys))

./ext/otatools/bin/lpmake \
     --metadata-size 65536 \
     --super-name super \
     --metadata-slots 2 \
     --device super:6442450944 \
     --group main:${newsize} \
     --partition product_"${FW_SLOT}":readonly:"${sizepro}":main \
        --image product_"${FW_SLOT}"=./product_a.img \
     --partition product_b:readonly:0:main \
     --partition vendor_"${FW_SLOT}":readonly:"${sizeven}":main \
        --image vendor_"${FW_SLOT}"=./vendor_a.img \
     --partition vendor_b:readonly:0:main \
     --partition system_"${FW_SLOT}":readonly:"${sizesys}":main \
        --image system_"${FW_SLOT}"=./system_a.img \
     --partition system_b:readonly:0:main \
     --sparse \
     --output ./super.new.img
