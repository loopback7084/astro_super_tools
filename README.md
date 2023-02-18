# Astro Super Tools

## Prerequisites:

- Clone this repository: `git clone https://github.com/loopback7084/astro_super_tools`.
- Download OTATools (https://drive.google.com/file/d/1h4sGXNI1Al5Y_Te9T8xMWrp3mHw1tke-/view), unpack and place in `astro_super_tools/ext/otatools`.
- Clone mtkclient and place into `astro_super_tools/ext/mtkclient`: 
```
cd astro_super_tools/ext
rm -rf mtkclient
git clone https://github.com/bkerler/mtkclient -b 1.9
```

## Prepare your device:

- Unlock your bootloader.
- Disable DMVerity on VBMETA, VBMETA_SYSTEM, VBMETA_VENDOR using fastboot:
``` 
fastboot --disable-verity --disable-verification flash vbmeta_a vbmeta_a.bin
fastboot --disable-verity --disable-verification flash vbmeta_b vbmeta_b.bin
fastboot --disable-verity --disable-verification flash vbmeta_system_a vbmeta_system_a.bin
fastboot --disable-verity --disable-verification flash vbmeta_system_b vbmeta_system_b.bin
fastboot --disable-verity --disable-verification flash vbmeta_vendor_a vbmeta_vendor_a.bin
fastboot --disable-verity --disable-verification flash vbmeta_vendor_a vbmeta_vendor_b.bin
```
- Download the SUPER IMG from your device using mtkclient.

## Use the scripts:
- `./init.sh`                              # set -eu 
- `./ext/otatools/bin/lpunpack super.img . # extract super
- `./mountall.sh`                          # mount partitions into /tmp
- `./safe-debloat.sh`                      # remove bloatware
- `./unmountall.sh`                        # unmount partitions and remove /tmp
- `./remake.sh`                            # remake your super into super.new.img
