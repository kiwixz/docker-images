FROM scratch AS builder

ADD "rootfs.tar" "/"
COPY "kiwixz_*" "/usr/local/bin/"
RUN :  \
    && chmod 755 /usr/local/bin/kiwixz_*  \
    && kiwixz_freeze  \
    && kiwixz_cleanup


FROM scratch
COPY --from=builder "/" "/"
CMD ["/bin/bash"]
