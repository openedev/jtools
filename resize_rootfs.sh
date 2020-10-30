#!/bin/sh

DEV=$1
PART=$2

echo growpart
sudo growpart /dev/$DEV $PART

echo e2fsck
sudo e2fsck -f /dev/$DEV$PART

echo resize2fs
sudo resize2fs /dev/$DEV$PART
