#!/bin/bash

set -e

pacman --needed --noconfirm -Sy  \
    curl unzip tar  `# "official" dependencies`  \
    gcc  `# to compile vcpkg`  \
    git  `# to clone vcpkg`  \
    which  `# for vcpkg to find tools in path`  \

cd "/opt"
git clone "https://github.com/Microsoft/vcpkg.git"
cd "vcpkg"
./bootstrap-vcpkg.sh
ln -s "/opt/vcpkg/vcpkg" "/usr/bin/"
vcpkg integrate install
chmod -R a+rw "."
