#!/bin/bash

lsblk

echo Enter USB device letter: 
read letter
echo Enter USB device number: 
read number

echo Unmounting the USB
sudo umount /dev/sd$letter$number

echo Enter path to the .iso
read iso_path

echo Attempting to create bootable USB
sudo dd bs=4M if=$iso_path of=/dev/sd$letter conv=fdatasync
echo Finished! =)
