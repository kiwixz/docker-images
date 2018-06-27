FROM archlinux/base AS builder

RUN pacman --noconfirm -Syu \
    && rm -rf  \
        /tmp/*  \
        /var/cache/pacman/pkg/*  \
        /var/tmp/*


FROM scratch
COPY --from=builder / /
CMD ["/usr/bin/bash"]
