#!/bin/bash

mkdir system
mkdir vendor
mkdir product
mount -t ext4 -o loop system_a.img system
mount -t ext4 -o loop vendor_a.img vendor
mount -t ext4 -o loop product_a.img product
