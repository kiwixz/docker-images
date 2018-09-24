FROM archlinux/base AS builder

COPY "bootstrap.sh" "/tmp/"
COPY "kiwixz_cleanup" "/usr/bin/"
RUN chmod 755 /usr/bin/kiwixz_*  \
    && bash "/tmp/bootstrap.sh"  \
    && kiwixz_cleanup


FROM scratch
COPY --from=builder / /
CMD ["/bin/bash", "-l"]
