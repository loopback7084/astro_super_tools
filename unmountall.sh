#!/bin/bash

umount ./system
umount ./vendor
umount ./product

rmdir system
rmdir product
rmdir vendor

e2fsck -yf system_a.img
e2fsck -yf vendor_a.img
e2fsck -yf product_a.img
resize2fs -M system_a.img
resize2fs -M vendor_a.img
resize2fs -M product_a.img
e2fsck -yf system_a.img
e2fsck -yf vendor_a.img
e2fsck -yf product_a.img
