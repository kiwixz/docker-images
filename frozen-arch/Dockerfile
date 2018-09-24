FROM archlinux/base AS builder

COPY "bootstrap.sh" "/tmp/"
COPY "kiwixz_*" "/usr/bin/"
RUN chmod 755 /usr/bin/kiwixz_*  \
    && kiwixz_freeze  \
    && bash "/tmp/bootstrap.sh"  \
    && kiwixz_cleanup


FROM scratch
COPY --from=builder / /
CMD ["/bin/bash", "-l"]
