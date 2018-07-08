#!/bin/bash

set -e

pacman --needed --noconfirm -Sy  \
    curl unzip tar  `# "official" dependencies`  \
    git  `# to clone vcpkg`  \
    gcc  `# to compile vcpkg`  \
    which  `# for vcpkg to find tools in path`  \
    perl  `# for shasum, for vcpkg to verify files`  \
    cmake  `# to install vcpkg libs`

source "/etc/profile"  # add perl binaries to path

cd "/opt"
git clone --depth=1 "https://github.com/Microsoft/vcpkg.git"

cd "vcpkg"
./bootstrap-vcpkg.sh -disableMetrics
ln -s "/opt/vcpkg/vcpkg" "/usr/bin/"
vcpkg integrate install
chmod -R a+rw "."

find "toolsrc" -maxdepth 1 -name 'build*' -type d -exec rm -rf {} \;
rm -rf "packages" "buildtrees"
rm -rf downloads/tools/cmake-*
find "downloads" -name '*' ! -path "downloads" ! -path 'downloads/tools*' -delete
