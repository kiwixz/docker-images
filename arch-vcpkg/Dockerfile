FROM kiwixz/arch AS builder

COPY "bootstrap.sh" "/tmp/bootstrap.sh"
RUN bash "/tmp/bootstrap.sh"  \
    && find /usr/share/locale -mindepth 1 -maxdepth 1 ! -name "en_US" ! -name "locale.alias" -exec rm -rf "{}" \;  \
    && rm -rf  \
        /tmp/*  \
        /usr/share/man/man*/*  \
        /var/cache/pacman/pkg/*  \
        /var/log/*  \
        /var/tmp/*


FROM scratch
COPY --from=builder / /
CMD ["/bin/bash", "-l"]
