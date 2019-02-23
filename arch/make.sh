#!/bin/bash

set -e

build_dir="$(mktemp -d)"
pacstrap -cGM "$build_dir"  \
    pacman bash  \
    diffutils grep sed which  `# tiny and useful`  \
    gzip  `# for locale-gen`
cp -R rootfs/* "$build_dir/"
arch-chroot "$build_dir" /bin/bash -c ":  \
    && locale-gen  \
    && pacman-key --init  \
    && pacman-key --populate  \
    && pacman --noconfirm -Runs gzip  \
    "
tar -C "$build_dir" -c --numeric-owner --xattrs --acls -f "rootfs.tar" "."
rm -rf "$build_dir"
