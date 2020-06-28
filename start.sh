
dd if=/dev/zero bs=1M count=2048 >> file.img

kpartx -v -a file.img

parted /dev/loop17
    resizepart 1 -1s
    quit
kpartx -d /dev/loop0

kpartx -v -a file.img

e2fsck -f /dev/mapper/loop17p1

resize2fs /dev/mapper/loop17p1

mount /dev/loop8p1 -o rw /mnt/armbian

cp /usr/bin/qemu-arm-static mnt/armbian/usr/bin

cd /mnt/armbian

mount --bind /dev dev/
mount --bind /sys sys/
mount --bind /proc proc/
mount --bind /dev/pts dev/pts

chroot . bin/bash