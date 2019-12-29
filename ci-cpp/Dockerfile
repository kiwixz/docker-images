FROM "kiwixz/arch"

RUN pacman --needed --noconfirm -Sy  \
        git openssh  \
        clang cmake gcc lld ninja  \
        nasm python  \
    && kiwixz_cleanup
