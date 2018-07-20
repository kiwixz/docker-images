#!/bin/bash

set -e

echo "Server=https://archive.archlinux.org/repos/$(date -d 'yesterday' +%Y/%m/%d)/\$repo/os/\$arch" > "/etc/pacman.d/mirrorlist"
pacman --needed --noconfirm -Syyuu

packages=$(pacman -Qq)
pacman --noconfirm -Runs -- ${packages//$'\npacman\n'/$'\n'}
pacman --needed --noconfirm -Sy bash
