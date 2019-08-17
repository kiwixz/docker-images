FROM "kiwixz/arch-vcpkg"

RUN pacman --needed --noconfirm -Sy  \
        git openssh  \
        clang cmake lld ninja  \
        python nasm  \
    && kiwixz_cleanup_vcpkg
