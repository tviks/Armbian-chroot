
losetup -f -P --show file.img

mount /dev/loop8p1 -o rw /mnt/armbian

cd /mnt/armbian

cp /usr/bin/qemu-arm-static mnt/armbian/usr/bin

chroot . bin/bash