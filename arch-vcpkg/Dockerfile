FROM kiwixz/arch AS builder

COPY "bootstrap.sh" "/tmp/"
COPY "kiwixz_cleanup_vcpkg" "/usr/bin/"
RUN chmod 755 /usr/bin/kiwixz_*  \
    && bash "/tmp/bootstrap.sh"  \
    && kiwixz_cleanup_vcpkg


FROM scratch
COPY --from=builder / /
CMD ["/bin/bash", "-l"]
