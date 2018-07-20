FROM kiwixz/arch AS builder

COPY "bootstrap.sh" "/tmp/bootstrap.sh"
RUN bash "/tmp/bootstrap.sh"  \
    && rm -rf  \
        /tmp/*  \
        /var/cache/pacman/pkg/*  \
        /var/tmp/*


FROM scratch
COPY --from=builder / /
CMD ["/bin/bash", "-l"]
