FROM archlinux/base AS builder

COPY "kiwixz_*" "/usr/local/bin/"
RUN chmod 755 /usr/local/bin/kiwixz_*  \
    && kiwixz_freeze  \
    && packages="$(pacman -Qq)"  \
    && pacman --noconfirm -Runs -- ${packages//$'\npacman\n'/$'\n'}  \
    && pacman --needed --noconfirm -Syyuu bash  \
    && kiwixz_cleanup


FROM scratch
COPY --from=builder / /
CMD ["/bin/bash"]
