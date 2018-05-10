#!/bin/bash

set -e

pacman --noconfirm -Sy curl gcc unzip tar

cd "/tmp"
unzip "vcpkg.zip"
mv "vcpkg-master" "/opt/vcpkg"
cd "/opt/vcpkg"

./bootstrap-vcpkg.sh
ln -s "/opt/vcpkg/vcpkg" "/usr/bin/"
vcpkg integrate install
chmod -R a+rw "/opt/vcpkg"
