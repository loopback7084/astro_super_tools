# Astro Super Tools

## Prerequisites:

- Clone this repository: 
```
git clone https://github.com/loopback7084/astro_super_tools
```
- Download OTATools (https://drive.google.com/file/d/1h4sGXNI1Al5Y_Te9T8xMWrp3mHw1tke-/view), unpack and place in `astro_super_tools/ext/otatools`.
- Clone mtkclient and place into `astro_super_tools/ext/mtkclient`: 
```
cd astro_super_tools/ext
rm -rf mtkclient
git clone https://github.com/bkerler/mtkclient -b 1.9
```

## Prepare your device:

- Create a full backup of your device using the MTKClient, either through either the GUI: `python mtk_gui` or the CLI: `python mtk rl out`.
- Unlock your bootloader:
    - Enable and open 'Developer Options'.
    - Enable 'USB debugging' and 'OEM Unlocking'.
    - Reboot into fastboot (reboot with `Vol -` pressed).
    - Unlock bootloader using: `fastboot flashing unlock`.
- Disable DMVerity on VBMETA, VBMETA_SYSTEM, VBMETA_VENDOR using fastboot by reflashing the vbmeta* bin files:
``` 
fastboot --disable-verity --disable-verification flash vbmeta_a vbmeta_a.bin
fastboot --disable-verity --disable-verification flash vbmeta_b vbmeta_b.bin
fastboot --disable-verity --disable-verification flash vbmeta_system_a vbmeta_system_a.bin
fastboot --disable-verity --disable-verification flash vbmeta_system_b vbmeta_system_b.bin
fastboot --disable-verity --disable-verification flash vbmeta_vendor_a vbmeta_vendor_a.bin
fastboot --disable-verity --disable-verification flash vbmeta_vendor_a vbmeta_vendor_b.bin
```
- Download the **super.img** from your device using MTKClient or use the **super.bin** file from your backup (renamed to **super.img**).

## Use the scripts:

- The scripts are used in following order. Note that `safe-debloat.sh` is not required, you can make your own modifications at that point.
```
./init.sh                                      # set -eu 
./ext/otatools/bin/lpunpack super.img .        # extract super
./mountall.sh                                  # mount partitions into /tmp

# Make your own modifications to the partition(s). Or remove bloatware using the optional script: ./safe-debloat.sh

./unmountall.sh                                # unmount partitions and remove /tmp
./remake.sh                                    # remake your super into super.new.img
```
- Flash the remade **super.new.img** using fastboot: 
```
fastboot flash super super.new.img
```

### Sidenote regarding MTKClient and fastboot:

MTKClient creates flashable backups of your devices and is able to restore these backups through the write option. However, it is not able to properly flash modified super images due to limitations in how it handles spare filesystems. Therefore it is recommended to use `fastboot` when flashing any images to your device, and using MTKClient only for backup.
