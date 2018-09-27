FROM kiwixz/arch:frozen AS builder

COPY "bootstrap.sh" "/tmp/"
COPY "kiwixz_*" "/usr/local/bin/"
RUN chmod 755 /usr/local/bin/kiwixz_*  \
    && bash "/tmp/bootstrap.sh"  \
    && kiwixz_cleanup_vcpkg


FROM scratch
COPY --from=builder / /
CMD ["/bin/bash", "-l"]
