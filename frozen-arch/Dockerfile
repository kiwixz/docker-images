FROM archlinux/base AS builder

COPY "bootstrap.sh" "/tmp/"
COPY "kiwixz_*" "/usr/local/bin/"
RUN chmod 755 /usr/local/bin/kiwixz_*  \
    && kiwixz_freeze  \
    && bash "/tmp/bootstrap.sh"  \
    && kiwixz_cleanup


FROM scratch
COPY --from=builder / /
CMD ["/bin/bash", "-l"]
