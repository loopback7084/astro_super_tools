#!/usr/bin/env bash

. ./common.sh

# unused
# oldsize=6442450944

declare -i sizepro
declare -i sizeven
declare -i sizesys

sizepro=$( stat -c %s product_a.img )
sizeven=$( stat -c %s vendor_a.img )
sizesys=$( stat -c %s system_a.img )
newsize=$((sizepro+sizeven+sizesys+sizesys))

./ext/otatools/bin/lpmake \
     --metadata-size 65536 \
     --super-name super \
     --metadata-slots 2 \
     --device super:6442450944 \
     --group main:${newsize} \
     --partition product_a:readonly:"${sizepro}":main \
        --image product_a=./product_a.img \
     --partition product_b:readonly:0:main \
     --partition vendor_a:readonly:"${sizeven}":main \
        --image vendor_a=./vendor_a.img \
     --partition vendor_b:readonly:0:main \
     --partition system_a:readonly:"${sizesys}":main \
        --image system_a=./system_a.img \
     --partition system_b:readonly:0:main \
     --sparse \
     --output ./super.new.img
