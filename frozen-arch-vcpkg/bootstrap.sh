#!/bin/bash

set -e

pacman --needed --noconfirm -Sy  \
    git  `# to clone vcpkg`  \
    curl  `# for vcpkg to download tools`  \
    tar gzip unzip  `# for vcpkg to extract tools`  \
    gcc  `# to compile vcpkg`  \
    which  `# for vcpkg to find tools in path`  \
    perl  `# for shasum, for vcpkg to verify files`  \
    cmake ninja  `# to install vcpkg libs`

source "/etc/profile"  # add perl binaries to path

cd "/opt"
git clone --depth=1 "https://github.com/Microsoft/vcpkg.git"

cd "vcpkg"
./bootstrap-vcpkg.sh -disableMetrics
ln -s "/opt/vcpkg/vcpkg" "/usr/bin/"
vcpkg integrate install
chmod -R a+rw "."

find "toolsrc" -maxdepth 1 -name 'build*' -type d -exec rm -rf {} \;
rm -rf "buildtrees" "downloads" "packages"
