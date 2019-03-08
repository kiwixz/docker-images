#!/bin/bash

set -e

docker run -i --privileged --rm -v "$(pwd)/rootfs:/rootfs:ro" "kiwixz/arch" "/bin/bash" "-c"  \
    "pacman --needed --noconfirm -Sy arch-install-scripts tar >&2  \
        && /bin/bash >&2  \
        && cat rootfs.tar" <"make.sh" >"rootfs.tar"
