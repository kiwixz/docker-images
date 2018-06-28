#!/bin/bash

set -e

echo "Server=https://archive.archlinux.org/repos/$(date -d 'yesterday' +%Y/%m/%d)/\$repo/os/\$arch" > "/etc/pacman.d/mirrorlist"
pacman --noconfirm -Syyuu
