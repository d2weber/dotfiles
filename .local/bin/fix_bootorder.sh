#!/bin/env bash

echo This script is for personal use only and potentially harmful.
echo DO NOT USE IT!
read -p "Warning: Do you really want to mock up EFI files? [y|n] " command
if [ $command == 'y' ]; then
  (
    set -x
    sudo mv /boot/efi/EFI/Microsoft/Boot/bootmgfw.efi /boot/efi/Start_Windows10.efi
    sudo cp /boot/efi/EFI/ubuntu/grubx64.efi /boot/efi/EFI/Microsoft/Boot/bootmgfw.efi
  )
  echo Done
  else
    echo Canceled.
fi
